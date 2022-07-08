//package vn.t3h.t3h_2202.util;
//
//import org.springframework.util.StringUtils;
//import vn.t3h.t3h_2202.dto.ProductDto;
//import vn.t3h.t3h_2202.dto.UserDto;
//
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.List;
//import java.util.Queue;
//
//public class DBUtils {
//    static String DB_INFO = "jdbc:mysql://localhost:3306/2202";
//    static String USER_NAME = "root";
//    static String PASS = "1234";
//
//    public static void create(String sql) throws SQLException {
//        Connection conn = DriverManager.getConnection(DB_INFO, USER_NAME, PASS);
//        Statement sqlFile = conn.createStatement();
//        try {
//            System.out.println("SQL: " + sql);
//            sqlFile.executeUpdate(sql);
//
//        } finally {
//            // Bước 4 đóng kết nối
//            sqlFile.close();
//            conn.close();
//        }
//    }
//
//    public static List<UserDto> danhSachUser(String key, int page, int perpage) throws SQLException {
//        List<UserDto> userDtoList = new ArrayList<>();
//        Connection conn = DriverManager.getConnection(DB_INFO, USER_NAME, PASS);
//        Statement sqlFile = conn.createStatement();
//        try {
//            StringBuilder sql = new StringBuilder("SELECT u.* FROM USER u WHERE 1=1 ");
//            if (!StringUtils.isEmpty(key))
//                sql.append(" u.USER_NAME LIKE '%")
//                    .append(key).append( "%' OR u.FULL_NAME LIKE '%" )
//                    .append(key).append("%'");
//            sql.append(" LIMIT ").append(perpage).append(" OFFSET ").append((page - 1) * perpage);
//
//            ResultSet resultSet = sqlFile.executeQuery(sql.toString());
//            while (resultSet != null && resultSet.next()) {
//                Long id = resultSet.getLong(1);
//                String userName = resultSet.getString(2);
//                String fullName = resultSet.getString(4);
//                String email = resultSet.getString(5);
//                String phone = resultSet.getString(6);
//                Integer gender = resultSet.getInt(7);
//                Integer status = resultSet.getInt(8);
//                String role = resultSet.getString(9);
//
//                //userDtoList.add(new UserDto(id, userName, null, fullName, null, email, phone, gender, status, role));
//            }
//
//        } finally {
//            // Bước 4 đóng kết nối
//            sqlFile.close();
//            conn.close();
//        }
//        return userDtoList;
//    }
//
//    public static long countUser(String key) throws SQLException {
//        List<UserDto> userDtoList = new ArrayList<>();
//        Connection conn = DriverManager.getConnection(DB_INFO, USER_NAME, PASS);
//        Statement sqlFile = conn.createStatement();
//        try {
//            StringBuilder sql = new StringBuilder("SELECT count(u.id) FROM USER u WHERE 1=1 ");
//            if (!StringUtils.isEmpty(key))
//                sql.append(" u.USER_NAME LIKE '%")
//                        .append(key).append( "%' OR u.FULL_NAME LIKE '%" )
//                        .append(key).append("%'");
//
//            ResultSet resultSet = sqlFile.executeQuery(sql.toString());
//            while (resultSet != null && resultSet.next()) {
//                Long count = resultSet.getLong(1);
//                return count;
//
//            }
//
//        } finally {
//            // Bước 4 đóng kết nối
//            sqlFile.close();
//            conn.close();
//        }
//        return 0L;
//    }
//
//
//    public static UserDto detail3(Long id) throws SQLException {
//        List<UserDto> userDtoList = new ArrayList<>();
//        Connection conn = DriverManager.getConnection(DB_INFO, USER_NAME, PASS);
//        Statement sqlFile = conn.createStatement();
//        try {
//            StringBuilder sql = new StringBuilder("SELECT u.* FROM USER u WHERE id =  ");
//            sql.append(id);
//
//            ResultSet resultSet = sqlFile.executeQuery(sql.toString());
//            while (resultSet != null && resultSet.next()) {
//                String userName = resultSet.getString(2);
//                String fullName = resultSet.getString(4);
//                String email = resultSet.getString(5);
//                String phone = resultSet.getString(6);
//                Integer gender = resultSet.getInt(7);
//                Integer status = resultSet.getInt(8);
//                String role = resultSet.getString(9);
//
//                //userDtoList.add(new UserDto(id, userName, null, fullName, null, email, phone, gender, status, role));
//            }
//
//        } finally {
//            // Bước 4 đóng kết nối
//            sqlFile.close();
//            conn.close();
//        }
//        return userDtoList.get(0);
//    }
//
//    public static List<ProductDto> danhSachProduct(String key, int page, int perpage) throws SQLException {
//        List<ProductDto> productDtoList = new ArrayList<>();
//        Connection conn = DriverManager.getConnection(DB_INFO, USER_NAME, PASS);
//        Statement sqlFile = conn.createStatement();
//        try {
//            StringBuilder sql = new StringBuilder("SELECT p.* FROM PRODUCT p WHERE 1=1 ");
//            if (!StringUtils.isEmpty(key))
//                sql.append(" p.NAME LIKE '%")
//                        .append(key).append( "%' OR p.DISCRIPTION LIKE '%" )
//                        .append(key).append("%'");
//            sql.append(" LIMIT ").append(perpage).append(" OFFSET ").append((page - 1) * perpage);
//
//
//            ResultSet resultSet1 = sqlFile.executeQuery(sql.toString());
//            while (resultSet1 != null && resultSet1.next()) {
//                long id = resultSet1.getLong(1);
//                        String name = resultSet1.getString(2);
//                        String description = resultSet1.getString(3);
//                        Double price = resultSet1.getDouble(4);
//                String brandId = resultSet1.getString(5);
//                String categoryId = resultSet1.getString(6) ;
//                String image = resultSet1.getString(7);
//                String createBy= resultSet1.getString(8);
//                productDtoList.add((new ProductDto(id, name , description, price, brandId , categoryId , image , createBy)));
//
//
//
//
//            }
//
//        } finally {
//            // Bước 4 đóng kết nối
//            sqlFile.close();
//            conn.close();
//        }
//        return productDtoList;
//    }
//
//    public static long countProduct(String key) throws SQLException {
//        List<ProductDto> productDtosList = new ArrayList<>();
//        Connection conn = DriverManager.getConnection(DB_INFO, USER_NAME, PASS);
//        Statement sqlFile = conn.createStatement();
//        try {
//            StringBuilder sql = new StringBuilder("SELECT count(p.id) FROM PRODUCT p WHERE 1=1 ");
//            if (!StringUtils.isEmpty(key))
//                sql.append(" p.NAME LIKE '%")
//                        .append(key).append( "%' OR p.DISCRIPTION LIKE '%" )
//                        .append(key).append("%'");
//
//            ResultSet resultSet = sqlFile.executeQuery(sql.toString());
//            while (resultSet != null && resultSet.next()) {
//                Long count = resultSet.getLong(1);
//                return count;
//
//            }
//
//        } finally {
//            // Bước 4 đóng kết nối
//            sqlFile.close();
//            conn.close();
//        }
//        return 0L;
//    }
//    public static ProductDto detail(Long id) throws SQLException {
//        List<ProductDto> productDtoList = new ArrayList<>();
//        Connection conn = DriverManager.getConnection(DB_INFO, USER_NAME, PASS);
//        Statement sqlFile = conn.createStatement();
//        try {
//            StringBuilder sql = new StringBuilder("SELECT p.* FROM PRODUCT p WHERE id =  ");
//            sql.append(id);
//
//
//            ResultSet resultSet1 = sqlFile.executeQuery(sql.toString());
//            while (resultSet1 != null && resultSet1.next()) {
//
//                String name = resultSet1.getString(2);
//                String description = resultSet1.getString(3);
//                Double price = resultSet1.getDouble(4);
//                String brandId = resultSet1.getString(5);
//                String categoryId = resultSet1.getString(6);
//                String image = resultSet1.getString(7);
//                String createBy = resultSet1.getString(8);
//                productDtoList.add(new ProductDto(id, name, description, price, brandId, categoryId, image, createBy ));
//
//            }
//
//        } finally {
//            // Bước 4 đóng kết nối
//            sqlFile.close();
//            conn.close();
//        }
//        return productDtoList.get(0);
//    }
//
//}
