<?php
	include_once ('admin/public/database/configuartion/config.php');
	include_once ('admin/public/database/sql_table/function.php');
?>
<!DOCTYPE html>
<html lang="kh">
<head>
	<title>LearnToCook</title>
	<meta charset="UTF-8">
	<link rel="shortcut icon" href="./public/img/shortcutIcon.png">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="./public/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="./public/css/animate.css">
	<link rel="stylesheet" type="text/css" href="./public/css/font-awesome.css">
	<link rel="stylesheet" href="./public/owl-carousel/owl.carousel.css">
	<link rel="stylesheet" href="./public/owl-carousel/owl.theme.css">
	<link rel="stylesheet" href="./public/css/main.css">
	<script type="text/javascript" src="./public/js/jquery.min.js"></script>
</head>
<body>
	<div id="fb-root"></div>
	<script>(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.5";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));</script>
	<!-- start logo, search, share, and menubar -->
	<div class="container padding-0">
		<div class="col-lg-12 padding-0 menubar">
			<div class="menubar">
				<div class="col-lg-2">
					<div class="logo-web web-logo"></div>
				</div>
				<div class="col-lg-10">
					<nav class="navbar navbar-default">
						<div class="container-fluid">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
								<a class="navbar-brand" href="./">វិជ្ជាធ្វើម្ហូបខ្មែរ</a>
							</div>
							<div class="collapse navbar-collapse" id="menu">
								<ul class="nav navbar-nav">
									<li class="dropdown​ w3dropdown" id="kind-food">
										<a href="?type" class="dropdown-toggle" data-toggle="dropdown">ប្រភេទម្ហូបខ្មែរ</a>
											<ul class="dropdown-menu">
												<?php
													$sql = "SELECT * FROM types";
													$result = $con->query($sql);
													while ($row = $result->fetch_assoc()){
														?>
														<li><a href="?type=<?= $row['value'] ?>"><?= $row['name'] ?></a></li>
														<?php
													}
												?>
											</ul>
										</li>
										<li><a href="pages/about.php">អំពីយើង</a></li>
								  <li><a href="pages/contact.php">ទំនាក់ទំនងយើង</a></li>
								</ul>
								<ul class="nav navbar-nav navbar-right">
									<li id="search-bar" class="form-search" >
										<form class="searchinfo" action="pages/search.php" method="GET">
											<input type="text"  placeholder="ស្វែងរក..." name="query_search">
										</form>
									</li>
								</ul>
							</div>
							</div>
						</nav>
					</div>
				</div>
			</div><!--- end of menubar -->
			<div class="col-lg-12 padding-0">
				<div class="carousel slide" data-ride="carousel" id="slide">
				<ol class="carousel-indicators">
					<li data-target="#slide" data-slide-to="0" class="active"></li>
					<li data-target="#slide" data-slide-to="1"></li>
					<li data-target="#slide" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<?php
						$sql = "SELECT * FROM articles WHERE status='publish' ORDER BY created DESC limit 0, 3";
						$result = $con->query($sql);
						while ($row = $result->fetch_assoc()){
							?>
							<div class="item">
								<img src="public/uploads/<?= $row['img']?>" alt="img1" class="img-responsive slide">
								<div class="carousel-caption">
									<div class="learntocook-slide-caption">
										<div class="learntocook-slide-caption-title"><?= $row['title'] ?></div>
										<div class="learntocook-slide-detail">
											<?= substr($row['intro'], 0, 100) ?>
										</div>
									</div>
								</div>
							</div>
							<?php
						}
					?>
				</div>
				<a class="left carousel-control" href="#slide" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#slide" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
			</div> <!--- end of slideshow -->
			<div class="col-lg-12 padding-0">
				<div class="wrapper-info">
					<div class="wrapper-infobar">ក្តារព័ត៏មាន​ នៃគេហទំព័រវិជ្ជាធ្វើម្ហូបថ្មីៗ</div>
					<div class="wrpper-maqueee">
						<marquee class="wrapper-list">
							<?php
								$sql = "SELECT * FROM articles WHERE status='publish' order by created DESC";
								$result = $con->query($sql);
								while ($row = $result->fetch_assoc()) {
									?>
										<a href='pages/detail.php?id=<?=$row['id']?>'><?= $row['title'] ?></a>
									<?php
								}
							?>
						</marquee>
					</div>
				</div>
			</div> <!-- end of boradinfo -->
			<div class="col-lg-12 content padding-0">
				<div class="col-lg-8 padding-0">
					<div class="info">
						<div class="barinfo">
							<span class="info-fonts">មុខម្ហូបថ្មីៗ</span>
						</div>
					</div>
					<section id="postContents">
						<div id="dev">
							<?php
								$per_page = 12;
								if(isset($_GET['id'])){
									$page = ($_GET['id']-1)*$per_page;
									$sql = "select art.*, tag.tagType tag, type.name type from articles art join tags tag join types type where (art.typeID = type.typeID) and (art.tagID = tag.tagID) and art.status='publish' order by created desc limit $page, $per_page";
								}
								else if(isset($_GET['type'])){
									$sql = "select art.*, tag.tagType tag, type.name type from articles art join tags tag join types type where (art.typeID = type.typeID) and (art.tagID = tag.tagID) and art.status='publish' and type.value = '".$_GET['type']."' order by created desc limit 0, $per_page";
								}
								else if(isset($_GET['id']) && isset($_GET['type'])){
									$page = ($_GET['id']-1)*$per_page;
									$sql = "select art.*, tag.tagType tag, type.name type from articles art join tags tag join types type where (art.typeID = type.typeID) and (art.tagID = tag.tagID) and art.status='publish' and type.value = '".$_GET['type']."' order by created desc limit 0, $per_page";
								}
								else{
									$page = 0;
									$sql = "select art.*, tag.tagType tag, type.name type from articles art join tags tag join types type where (art.typeID = type.typeID) and (art.tagID = tag.tagID) and art.status='publish' order by created desc limit $page, $per_page";
								}
								$result = $con->query($sql);
								if($result->num_rows>0){
									while ($row = $result->fetch_assoc()){
										?>
										<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 wow fadeIn  padding-2 animated">
											<div class="box">
												<div class="learntocook-top">
													<a id="<?= $row['id'] ?>" href="pages/detail.php?id=<?= $row['id'] ?>" class="box-image countView"><img src="public/uploads/<?= $row['img'] ?>" class="img-responsive"></a>
													<div class="box-body">
														<br><i class="fa fa-bookmark icon-danger"></i><span class="title"> <?= $row['title'] ?></span>
														<br><span class="fa fa-tag icon-danger"></span><span class="title"> <?= $row['type'] ?></span>
														<br><i class="fa fa-user icon-danger"></i><span class="article"> <?= $row['author'] ?></span>
														<br><i class="fa fa-calendar icon-danger"></i>​ <span class="article"> <?= $row['created'] ?></span>
													</div>
												</div>
												<div class="box-footer">
													<a id="<?= $row['id'] ?>" href="pages/detail.php?id=<?= $row['id'] ?>" class="countView"><button class="btn btn-warning pull-right"><i class="fa fa-eye"></i> អានបន្ត</button></a>
													<div class="clearfix"></div>
												</div>
											</div>
										</div>
										<?php
									}
								}else{
									echo "<h1 class='text-center'>មិនមានទិន្នន័យទេសូមអភ័យទោស</h1>";
								}
							?>
						</div>
					</section>
					<div class="clearfix"></div>
					<div class="col-lg-12">
						<ul class="pagination">
							<?php
								if(isset($_GET['type'])){
									$sql = "SELECT * FROM articles as ati JOIN types as type WHERE (ati.typeID = type.typeID) and type.value='".$_GET['type']."'";
								}
								else {
									$sql = "SELECT * FROM articles";
								}
								$result = $con->query($sql);
								if($result->num_rows>12){
									for($i=1; $i<=ceil($result->num_rows/12); $i++){
										if(!isset($_GET['type'])){
											?>
											<li><a href="index.php?id=<?= $i ?>"><?= $i ?></a></li>
											<?php
										}else{
											?>
												<li><a href="index.php?id=<?= $i ?>&type=<?= $_GET['type']?>"><?= $i ?></a></li>
											<?php
										}
									}
								}
							?>
						</ul>
					</div>
				</div> <!--- end of contents -->
				<aside class="aside">
					<div class="col-lg-4 wrapper-main">
						<div class="main">
							<div class="main-bar">
								<div class="main-title">អត្តបទពេញនិយម</div>
							</div>
							<?php
								$sql = "SELECT * FROM articles WHERE status='publish' and views > 0 order by views DESC limit 0,6";
								$result = $con->query($sql);
								while ($row = $result->fetch_assoc()){
									?>
										<div class="slide-content wow fadeIn animated">
											<div class="slide-img">
												<a class="countView" id="<?=$row['id']?>" href='pages/detail.php?id=<?= $row['id']?>'><img src="public/uploads/<?= $row['img'] ?>" class="img-responsive" title="សាច់គោ​ជាប់​ខ្លាញ់"></a>
											</div>
											<div class="slide-text">
												<div class="slide-titles">
													<a class="countView" id="<?=$row['id']?>" href='pages/detail.php?id=<?= $row['id']?>'><p><?= $row['title'] ?></p></a>
													<article><?= substr($row['intro'], 0, 100) ?></article>
												</div>
												<div class="slide-public icon-default">
													<span><?= substr($row['created'], 0, 10)?></span>
													<span class="pull-right icon-danger"><?= $row['views']?> Views</span>
												</div>
											</div>
											<div class="clearfix"></div>
										</div>
									<?php
								}
							?>
						</div>
					</div>
				</aside>
				<div class="clearfix"></div>
				<div class="bar margin-top-10"></div>
				<div class="col-lg-12 padding-0 margin-top-10">
					<div class="col-lg-12 padding-0">
						<div class="info">
							<div class="barinfo">
								<span class="info-fonts">មុខម្ហូបល្បីថ្មីៗ</span>
							</div>
						</div>
					</div>
					<div class="col-lg-12  padding-0">
						<?php
							$sql = "SELECT * FROM articles limit 0,3";
							$result = $con->query($sql);
							while ($row = $result->fetch_assoc()){
								?>
									<div class="col-lg-4 col-md-4 col-sm-6">
										<div class="box-view wow fadeInUp animated">
											<div class="box-image-view">
												<a class="countView" id="<?=$row['id']?>" href="pages/detail.php?id=<?=$row['id']?>"><img src="public/uploads/<?= $row['img'] ?>" class="img-responsive" title="<?=$row['title']?>"></a>
												<div class="box-info">
													<span><?= $row['title'] ?></span>
												</div>
												<div class="box-article">
													<div class="box-head">
														<p class="text-justify article"><?= substr($row['intro'], 0, 100) ?></p>
													</div>
													<div class="share-icon">
														<a href="https://www.facebook.com/sharer/sharer.php?u=http%3A//learntocook.gicwebclub.com/pages/detail.php?id=<?= $row['id']?>" target="_blank"><button class="btn fb-bg margin-right-0"><i class="fa fa-facebook"></i></button></a>
														<a href="https://twitter.com/home?status=http%3A//learntocook.gicwebclub.com/pages/detail.php?id=<?= $row['id'] ?>" target="_blank"><button class="btn tw-bg margin-right-0"><i class="fa fa-twitter"></i></button></a>
														<a href="https://plus.google.com/share?url=http%3A//learntocook.gicwebclub.com/pages/detail.php?id=<?= $row['id'] ?>" target="_blank"><button class="btn gplus-bg margin-right-0"><i class="fa fa-google-plus"></i></button></a>
													</div>
												</div>
											</div>
										</div>
									</div>
								<?php
							}
						?>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="bar margin-top-10"></div>
				<div class="col-lg-12 padding-0 margin-top-10">
					<div class="col-lg-12 padding-0">
						<div class="info">
							<div class="barinfo">
								<span class="info-fonts">ទស្សនាអំពីប្រភេទគ្រឿងផ្សំខ្មែរ</span>
							</div>
						</div>
					</div>
					<div class="col-lg-12">
						<div id="owl-demo" class="owl-carousel">
							<?php
								$sql = "SELECT * FROM ingredients ORDER  BY created DESC";
								$result = $con->query($sql);
								if($result->num_rows>0){
									while ($row = $result->fetch_assoc()){
										?>
										<div class="item wow rotateIn animated"><img class="lazyOwl" src="" data-src="public/ingredient/<?= $row['image'] ?>" alt="<?= $row['title']?>" title="<?=$row['title']?>"></div>
										<?php
									}
								}else{
									echo "Error !";
								}
							?>
						</div>
					</div>
				</div>
				<div class="clearfix"></div><!--- end of video -->
			</div> <!--- end of main -->
			<div class="col-lg-12 padding-0 footer">
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 hidden-xs hidden-sm margin-top-10">
					<div class="title-list">
						<span>យល់ដឹងបន្ថែម</span>
					</div>
					<div class="learntocook-list-link">
						<ul>
							<li><a href="pages/book.php">សៀវភៅមុខម្ហូប</a></li>
							<li><a href="pages/restaurant.php">ភោជនីយដ្ឌាន</a></li>
							<li><a href="pages/ingredient.php">ប្រភពគ្រឿងផ្សំ</a></li>
							<li><a href="?ref=region-food">ម្ហូបល្បីៗតាមតំបន់</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 hidden-xs hidden-sm" style="margin-top:10px;">
					<div class="title-list">
						<span>ប្រភេទនៃមុខម្ហូប</span>
					</div>
					<div class="learntocook-list-link">
						<ul>
							<?php
								$sql = "SELECT * FROM types";
								$result = $con->query($sql);
								while ($row = $result->fetch_assoc()){
									?>
										<li><a href="?type=<?= $row['value'] ?>"><?= $row['name']?></a></li>
									<?php
								}
							?>
						</ul>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-md-12 col-xs-12" style="margin-top:10px;">
					<div class="title-list">
						<span>ទំនាក់ទំនងពួកយើង</span>
					</div>
					<div class="learntocook-container-share-icon">
						<button class="sprite-icon twiter"></button>
						<a href="https://facebook.com/e20120175" target="_blank"><button class="sprite-icon facebook"></button></a>
						<a href="https://plus.google.com/117490086337290621416" translate="yes" target="_blank"><button class="sprite-icon google"></button></a>
						<button class="sprite-icon instagram"></button>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="col-lg-12"> <!-- developer HEL Mab -->
					<div class="super-title">
						<span class="text-center">រក្សាសិទ្ធិដោយ​ ស្ថាបនិកគេហទំព័រ វីជ្ជាធ្វើម្ហូប​ ២០១៦</span>
					</div>
				</div>
			</div> <!--- end of footer -->
		</div> <!--- end of container-->
	<div id="goTop"><span id="gotopspan" class="glyphicon glyphicon-chevron-up"></span></div>
	<script type="text/javascript" src="./public/js/totop.js"></script>
	<script type="text/javascript" src="./public/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="./public/js/slide.js"></script>
	<script type="text/javascript" src="./public/js/wow.min.js"></script>
	<script type="text/javascript" src="./public/js/menubar.js"></script>
	<script src="./public/js/wow.min.js"></script>
	<script type="text/javascript" src="./public/js/main.js"></script>
	<script src="./public/owl-carousel/owl.carousel.js"></script>
	<script src="./public/js/owl.js"></script>
	<script src="public/js/articles.js"></script>
</body>
</html>
