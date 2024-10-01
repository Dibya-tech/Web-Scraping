# # # Read the file
# # file_path = 'D:/Web Scraping/Web-Scraping/table_headers.txt'

# # with open(file_path, 'r') as file:
# #     lines = file.readlines()

# # # Process each line
# # table_data = []
# # for line in lines:
# #     # Evaluate the line to convert it from string representation to Python list
# #     try:
# #         parsed_list = eval(line.strip())
# #         table_data.append(parsed_list)
# #     except Exception as e:
# #         print(f"Error parsing line: {e}")

# # # Now you have table_data as a list of lists
# # for table in table_data:
# #     print(table)


# Absolute path

# folder_path = "latest_htmls/Earthquakes"  # Replace with the actual folder path
# absolute_folder_path = os.path.abspath(folder_path)
# filenames = list_filenames(absolute_folder_path)

# for file in filenames:
#     absolute_file_path = os.path.join(absolute_folder_path, file)
#     print(f"file:///{absolute_file_path}")
