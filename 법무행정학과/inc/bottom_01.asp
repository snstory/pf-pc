<!-- ============================== //페이지별 영역 ============================== -->
						</div><!-- //content_area -->

					</div><!-- //colgroup-inner -->

				</div><!-- //colgroup -->

				<span class="inblk_fnn"></span>

			</div><!-- //container_inner -->
		</div><!-- //container -->
	</div><!-- //container-wrap -->

	<div id="footer">

		<!-- #include file="has/footer.asp" -->

	</div><!-- //footer -->

</div><!-- //wrap -->

<!-- 앤큐 RANK -->
<div class="lawadm_rank_layer" id="lawadmRankLayerElem">

	<h1 class="ttl">엔큐 RANK</h1>
	<a href="#" class="layer_hide">닫기</a>

	<div class="tb_bx">
		<i class="bg-lt"></i><i class="bg-gt"></i>
		<table>
			<colgroup>
				<col width="16%" />
				<col width="37%" />
				<col width="*" />
			</colgroup>
		
			<thead>
				<tr>
					<th>Rank</th>
					<th>일주일</th>
					<th>누적</th>
				</tr>
			</thead>
		
			<tbody>
				<tr>
					<td><b>1</b></td>
					<td>11101149 (340개)</td>
					<td>207220046 (77460개)</td>
				</tr>
				<tr>
					<td><b>2</b></td>
					<td>11101149 (340개)</td>
					<td>207220046 (77460개)</td>
				</tr>
				<tr>
					<td><b>3</b></td>
					<td>11101149 (340개)</td>
					<td>207220046 (77460개)</td>
				</tr>
				<tr>
					<td><b>4</b></td>
					<td>11101149 (340개)</td>
					<td>207220046 (77460개)</td>
				</tr>
				<tr>
					<td><b>5</b></td>
					<td>11101149 (340개)</td>
					<td>207220046 (77460개)</td>
				</tr>
				<tr>
					<td><b>6</b></td>
					<td>11101149 (340개)</td>
					<td>207220046 (77460개)</td>
				</tr>
				<tr>
					<td><b>7</b></td>
					<td>11101149 (340개)</td>
					<td>207220046 (77460개)</td>
				</tr>
				<tr>
					<td><b>8</b></td>
					<td>11101149 (340개)</td>
					<td>207220046 (77460개)</td>
				</tr>
				<tr>
					<td><b>9</b></td>
					<td>11101149 (340개)</td>
					<td>207220046 (77460개)</td>
				</tr>
				<tr>
					<td><b>10</b></td>
					<td>11101149 (340개)</td>
					<td>207220046 (77460개)</td>
				</tr>
			</tbody>
		</table>
	</div>

</div>

<script type="text/javascript">
//<![CDATA[
$( function() {
	//$( '#lawadmRankLayerElem a.layer_hide:first' ).click( function() {
	//	$( '#lawadmRankLayerElem' ).hide();
	//	return false;
	//} );

	$( '#lawadmRankLayerElem tr' ).each( function() {
		$( 'td:first', this ).css( 'border-left', 0 );
	} );

	jQuery( '#quickMenuMap area[href="#lawadmRankLayerElem"]' ).each( function() {
		lawadm.popupLayer.init( {
			context: jQuery( this ),
			closeBtn: 'a.layer_hide:first',
			divi_key: 'gloMenu_003'
		} );
	} );

} );
//]]>
</script>

<!-- //앤큐 RANK -->
