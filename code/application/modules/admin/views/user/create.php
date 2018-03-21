<?php echo $form->messages(); ?>

<div class="row">

	<div class="col-md-6">
		<div class="box box-primary">
			<div class="box-header">
				<h3 class="box-title">User Info</h3>
			</div>
			<div class="box-body">
				<?php echo $form->open(); ?>

					<?php echo $form->bs3_text('First Name', 'first_name'); ?>
					<?php echo $form->bs3_text('Last Name', 'last_name'); ?>
					<?php echo $form->bs3_text('Username', 'username'); ?>
					<?php echo $form->bs3_text('Email', 'email'); ?>

					<?php echo $form->bs3_password('Password', 'password'); ?>
					<?php echo $form->bs3_password('Retype Password', 'retype_password'); ?>

					<?php if ( !empty($groups) ): ?>
					<div class="form-group">
						<label for="groups">Groups</label>
						<div>
						<?php foreach ($groups as $group): ?>
							<label class="checkbox-inline">
								<input type="checkbox" name="groups[]" value="<?php echo $group->id; ?>"> <?php echo $group->name; ?>
							</label>
						<?php endforeach; ?>
						</div>
					</div>
					<?php endif; ?>
					
					<?php if ( !empty($entities) ): ?>
					<div class="form-group">
						<label for="groups">Access to</label>
						<div>
						<select class="form-control" name="entity_code">
							<option value="">-Select One-</option>  
						<?php $entity = $this->db->query("SELECT * FROM ems_departments WHERE status='A'")->result(); foreach ($entity as $entity): ?>
								<!-- <option value="<?php echo $entity->entity_type; ?>#<?php echo $entity->entity_code; ?>"> <?php echo $entity->entity_code; ?>  (<?php echo $entity->entity_name; ?>)</option> -->
								<option value="<?php echo $entity->department_code; ?> ?>"> <?php echo $entity->department_title; ?> </option>
						<?php endforeach; ?>
						</select>
						</div>
					</div>
					<?php endif; ?>

					<?php echo $form->bs3_submit(); ?>
					
				<?php echo $form->close(); ?>
			</div>
		</div>
	</div>
	
</div>
