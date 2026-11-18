.class public Landroid/taobao/windvane/util/ImageTool;
.super Ljava/lang/Object;
.source "ImageTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;
    }
.end annotation


# static fields
.field private static final MAX_LENGTH:I = 0x2800


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static bitmapToBytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B
    .locals 2

    if-eqz p0, :cond_0

    .line 314
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x64

    .line 315
    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 316
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static readRotationDegree(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 356
    :cond_0
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    const/4 v2, 0x1

    .line 357
    invoke-virtual {v1, p0, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x6

    if-eq p0, v1, :cond_2

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x10e

    const/16 v0, 0x10e

    goto :goto_0

    :cond_2
    const/16 p0, 0x5a

    const/16 v0, 0x5a

    goto :goto_0

    :cond_3
    const/16 p0, 0xb4

    const/16 v0, 0xb4

    goto :goto_0

    :catch_0
    move-exception p0

    .line 370
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static readZoomImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4

    const/16 v0, 0x2800

    if-le p1, v0, :cond_0

    const/16 p1, 0x2800

    .line 240
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 241
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 244
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 245
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v2, v3, :cond_1

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_0

    :cond_1
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    int-to-float v2, v2

    int-to-float p1, p1

    div-float/2addr v2, p1

    .line 246
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-ge p1, v1, :cond_2

    const/4 p1, 0x1

    .line 249
    :cond_2
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 252
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 254
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 380
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 381
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 383
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p0, p1, :cond_0

    move-object p0, p1

    :catch_0
    :cond_0
    return-object p0
.end method

.method public static saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;)Z
    .locals 7

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_1

    .line 137
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/ImageTool;->saveImageQ(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "ImageTool"

    const-string/jumbo p1, "save image failed"

    .line 138
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    return v2

    .line 144
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 149
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 150
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 152
    new-array p1, v2, [Ljava/lang/String;

    .line 154
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "image/jpeg"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 152
    invoke-static {p0, p1, v0, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 162
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 160
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method private static saveImageQ(Landroid/content/Context;Landroid/graphics/Bitmap;)Z
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "wv_save_image"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_display_name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mime_type"

    const-string v3, "image/jpeg"

    .line 178
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 179
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "is_pending"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "relative_path"

    .line 180
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "external_primary"

    .line 182
    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 184
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 190
    :try_start_0
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v1, "android Q: save image error for uri is null"

    invoke-direct {p1, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Landroid/util/AndroidRuntimeException;->printStackTrace()V

    return v3

    :cond_0
    const-string/jumbo v6, "w"

    .line 195
    invoke-virtual {p0, v0, v6, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 196
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :try_start_2
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {p1, v8, v9, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 198
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v1, "android Q: save image failed"

    invoke-direct {p1, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Landroid/util/AndroidRuntimeException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 216
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 217
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    if-eqz v6, :cond_1

    .line 220
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 223
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return v3

    .line 205
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 206
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    invoke-virtual {p0, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 216
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 217
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    if-eqz v6, :cond_3

    .line 220
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 223
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_1
    return v2

    :catch_2
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v7, v5

    goto :goto_6

    :catch_3
    move-exception p1

    move-object v7, v5

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v6, v5

    move-object v7, v6

    goto :goto_6

    :catch_4
    move-exception p1

    move-object v6, v5

    move-object v7, v6

    .line 211
    :goto_2
    :try_start_6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 212
    invoke-virtual {p0, v0, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v7, :cond_4

    .line 216
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 217
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    goto :goto_3

    :catch_5
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz v6, :cond_5

    .line 220
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    .line 223
    :goto_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_5
    return v3

    :catchall_2
    move-exception p0

    :goto_6
    if-eqz v7, :cond_6

    .line 216
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 217
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    goto :goto_7

    :catch_6
    move-exception p1

    goto :goto_8

    :cond_6
    :goto_7
    if-eqz v6, :cond_7

    .line 220
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_9

    .line 223
    :goto_8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 224
    :cond_7
    :goto_9
    throw p0
.end method

.method public static saveImageToDCIM(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1

    .line 116
    new-instance v0, Landroid/taobao/windvane/util/ImageTool$2;

    invoke-direct {v0, p2}, Landroid/taobao/windvane/util/ImageTool$2;-><init>(Landroid/os/Handler;)V

    invoke-static {p0, p1, v0}, Landroid/taobao/windvane/util/ImageTool;->saveImageToDCIM(Landroid/content/Context;Ljava/lang/String;Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static saveImageToDCIM(Landroid/content/Context;Ljava/lang/String;Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;)V
    .locals 2

    .line 59
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "data:"

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ","

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 97
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    .line 98
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 99
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/ImageTool;->saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    .line 101
    invoke-interface {p2}, Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;->success()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    if-eqz p2, :cond_2

    .line 106
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    invoke-static {}, Landroid/taobao/windvane/connect/ConnectManager;->getInstance()Landroid/taobao/windvane/connect/ConnectManager;

    move-result-object v0

    new-instance v1, Landroid/taobao/windvane/util/ImageTool$1;

    invoke-direct {v1, p0, p2}, Landroid/taobao/windvane/util/ImageTool$1;-><init>(Landroid/content/Context;Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;)V

    invoke-virtual {v0, p1, v1}, Landroid/taobao/windvane/connect/ConnectManager;->connect(Ljava/lang/String;Landroid/taobao/windvane/connect/HttpConnectListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static toDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 331
    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 332
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 334
    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 335
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_0
    move-exception p0

    .line 337
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-object v0
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 263
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 264
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    if-le v0, p1, :cond_2

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 268
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 269
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 270
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;JJ)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 282
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 283
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_1

    move v0, v3

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    move v0, v4

    :goto_0
    int-to-long v5, v0

    cmp-long v2, v5, p1

    if-gtz v2, :cond_3

    int-to-long v5, v1

    cmp-long v2, v5, p3

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    :goto_1
    long-to-float p1, p1

    int-to-float p2, v0

    div-float/2addr p1, p2

    long-to-float p2, p3

    int-to-float p3, v1

    div-float/2addr p2, p3

    cmpg-float p3, p1, p2

    if-gez p3, :cond_4

    goto :goto_2

    :cond_4
    move p1, p2

    .line 297
    :goto_2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 298
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 299
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
