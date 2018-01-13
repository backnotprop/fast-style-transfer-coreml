import tfcoreml as tf_converter
tf_converter.convert(tf_model_path = 'udnie.pb',
                     mlmodel_path = 'udnie.mlmodel',
                     output_feature_names = ['add_37:0'],
                     image_input_names = ['img_placeholder__0'])
