<ul id="shortcut">    <li>          <a href="<?php echo make_admin_url('setting', 'list', 'list');?>" title="Edit Settings">            <img src="images/shortcut/setting.png" alt="setting"/><br/>            <strong>Setting</strong>          </a>    </li>	    <?php if($section=='update'):?>    <li>        <a href="<?php echo make_admin_url('banner', 'list', 'list');?>" id="shortcut_posts" title="Back to slider listing">            <img src="images/shortcut/back.png" alt="posts"/><br/>            <strong>Sliders</strong>        </a>    </li>     <?php endif;?>     <?php if($section!='insert' && $section!='update'):?>    <!--     <li>    <a href="<?php echo make_admin_url('banner', 'list', 'insert');?>" id="shortcut_posts" title="Add New Slider">        <img src="images/shortcut/posts.png" alt="posts"/><br/>        <strong>New</strong>    </a>    </li>    -->    <?php endif;?></ul><br class="clear"/><?phpdisplay_message(1);#handle sections here.switch ($section):        case 'list':		#html code here.		?> <div class="onecolumn">        <div class="header">                <span>Manage Sliders</span>        </div>        <br class="clear"/>        <div class="content">        <form action="<?php echo make_admin_url('banner', 'update2', 'list', 'id='.$id);?>" method="post" id="form_data" name="form_data" class="form_data" >        <table width="100%" border="0" cellspacing="1" cellpadding="1" class="data" >           <thead>	<tr>                <th width="13%"  align="left">Title</th>                <th width="20%"  align="center" >Manage Slides</th>                <th align="center" width="20%" class="table_head center">Status</th>                <th  align="center" width="15%">Action</th>			</tr>            </thead>                        <tbody>             <? if($QueryObj->GetNumRows()!=0):?>             <? $sr=1;while($banner=$QueryObj->GetObjectFromRecord()):?>		<tr>		  <td width="13%" align="left" ><?php echo $banner->slideshow_title;?></td>                  <td width="20%"  align="center" ><a href="<?php echo make_admin_url('slides', 'list', 'list', 'slideshow_id='.$banner->id);?>">Slides</a></td>                                    <td align="center" width="20%">                       <input type="checkbox" name="is_active[<?=$banner->id;?>]" <?=$banner->is_active=='1'?'checked':''?>  style="border:none;" />		  </td>		                 		  <td align="center" width="15%">			<?=make_admin_link(make_admin_url('banner', 'update', 'update', 'id='.$banner->id), get_control_icon('edit'), 'edit', 'help');?>&nbsp;<!--                        <a class="help" href="<?php echo make_admin_url('banner', 'delete', 'list', 'id='.$banner->id);?>" onclick="return confirm('Are you sure? You are deleting this page.');" title="delete" > <?php echo get_control_icon('cancel');?></a>-->						  </td>	       </tr>			<? endwhile; ?>            </tbody>            <tr>                <td  ></td>                 <td  ></td>              				<td align="center" valign="middle"   ><input type="submit" name="submit" value="update"></td>				<td class="" align="center"></td>			</tr>			<?php			else:?>				<tr>					<td>&nbsp;&nbsp;</td>				</tr>				<tr>					<td align="center" valign="middle" colspan="6">Sorry no record found.</td>				</tr>			<?endif;?>					</table>        </form>        </div> </div>		<?		break;	case 'insert':		?>		<form id="video_insert" action="<?=make_admin_url('banner', 'insert', 'insert');?>" method="post" name="slider_insert" enctype="multipart/form-data">               <div class="twocolumn">                                     <div class="column_left" style="margin-bottom:20px;">                     <div class="header">                         <span>Add New</span>                     </div>                     <br class="clear"/>                     <div class="content">                    		<p>					<label>Title</label><br/>					<input type="text" name="slideshow_title"  class="input_type" tabindex="1" />				</p>                                              <p>					<label>Height</label><br/>					<input type="text" name="height" id="height" class="input_type" tabindex="1" />				</p>                <p>					<label>width</label><br/>					<input type="text" name="width" id="width" class="input_type" tabindex="1" />				</p>                 			                                          </div>                         </div>                   <div class="column_right" >                       <div class="header">                           <span>Actions</span>                       </div>                       <br class="clear"/>                        <div class="content">                            <p><input type="submit" name="submit" value="Submit" tabindex="7" /></p>                        </div>                   </div>               </div>                   </form>		<?		#html code here.		break;case 'update':		#html code here.		?>		<form id="video_update" action="<?=make_admin_url('banner', 'update', 'update', 'id='.$id)?>" method="post" name="team_update" enctype="multipart/form-data">                                      <div class="twocolumn">                                     <div class="column_left" style="margin-bottom:20px;">                     <div class="header">                         <span>Edit Slider</span>                     </div>                     <br class="clear"/>                     <div class="content">                    				<p>					<label>Title</label><br/>					<input type="text" name="slideshow_title" id="date" class="input_type" tabindex="1" value="<?=$banner->slideshow_title;?>" />				</p> <br class="clear"/>				              <p>					<label>Height</label><br/>					<input type="text" name="height" id="date" class="input_type" tabindex="1" value="<?=$banner->height;?>" />				</p> <br class="clear"/>                <p>					<label>Width</label><br/>					<input type="text" name="width" id="navigation_query" class="input_type" tabindex="1" value="<?=$banner->width;?>" />				</p> <br class="clear"/>                          <p>					<label></label><br/>					<td align="left"></td>				</p>                     </div>                         </div>			 <div class="column_right">                             <div class="header">                                <span>Action</span>                             </div>                            <br class="clear"/>                            <div class="content">                                <p><input type="submit" name="submit" value="Submit" tabindex="7" /></p>                            </div>                         </div>                     </div>		</form>		<?		break;	default:break;endswitch;?>