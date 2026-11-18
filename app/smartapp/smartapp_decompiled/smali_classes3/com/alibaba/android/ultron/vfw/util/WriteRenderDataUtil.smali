.class public Lcom/alibaba/android/ultron/vfw/util/WriteRenderDataUtil;
.super Ljava/lang/Object;
.source "WriteRenderDataUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static writeDataToFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const/16 v0, 0x65

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 52
    invoke-virtual {p2, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    check-cast p2, Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 59
    :cond_1
    new-instance p2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 62
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 64
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 65
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 67
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static writeRenderFile(Lcom/alibaba/android/ultron/vfw/core/DataSource;Landroid/content/Context;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getAllList()Ljava/util/List;

    move-result-object p0

    .line 30
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 31
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 32
    instance-of v2, v1, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;

    if-eqz v2, :cond_1

    .line 33
    move-object v2, v1

    nop

    nop

    invoke-virtual {v2}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->toJsonInfo()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 34
    invoke-interface {v1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getType()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :try_start_0
    const-string p0, "ultronRenderData.txt"

    .line 38
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/alibaba/android/ultron/vfw/util/WriteRenderDataUtil;->writeDataToFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void
.end method
