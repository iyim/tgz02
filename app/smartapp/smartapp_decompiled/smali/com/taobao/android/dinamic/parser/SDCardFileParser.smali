.class public Lcom/taobao/android/dinamic/parser/SDCardFileParser;
.super Lcom/taobao/android/dinamic/parser/AbstractParser;
.source "SDCardFileParser.java"


# static fields
.field private static final ROOT_DIR:Ljava/lang/String; = "/sdcard/com.taobao.taobao/home"

.field private static final TAG:Ljava/lang/String; = "Home.FileParser"


# instance fields
.field private xmlBlockConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/taobao/android/dinamic/parser/AbstractParser;-><init>()V

    .line 25
    invoke-direct {p0}, Lcom/taobao/android/dinamic/parser/SDCardFileParser;->init()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init()V
    .locals 5

    :try_start_0
    const-string v0, "android.content.res.XmlBlock"

    .line 30
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    .line 31
    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [B

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamic/parser/SDCardFileParser;->xmlBlockConstructor:Ljava/lang/reflect/Constructor;

    .line 32
    iget-object v0, p0, Lcom/taobao/android/dinamic/parser/SDCardFileParser;->xmlBlockConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Home.FileParser"

    const-string v2, "Fail to get XmlBlock"

    .line 34
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public isFileExist(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Z
    .locals 2

    .line 39
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    const-string v1, "/sdcard/com.taobao.taobao/home"

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public openXmlResourceParser(Ljava/lang/String;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Lcom/taobao/android/dinamic/view/ViewResult;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 4

    const-string p1, "Home.FileParser"

    .line 45
    iget-object v0, p0, Lcom/taobao/android/dinamic/parser/SDCardFileParser;->xmlBlockConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 49
    :cond_0
    iget-object v0, p2, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 55
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/sdcard/com.taobao.taobao/home"

    iget-object v3, p2, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lcom/taobao/android/dinamic/parser/IOUtils;->read(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to read sdcard layout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move-object v0, v1

    .line 63
    :goto_0
    invoke-virtual {p0, v0, p3}, Lcom/taobao/android/dinamic/parser/SDCardFileParser;->beforeProcess([BLcom/taobao/android/dinamic/view/ViewResult;)[B

    move-result-object p3

    if-eqz p3, :cond_4

    .line 65
    array-length v0, p3

    if-nez v0, :cond_3

    goto :goto_1

    .line 69
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File parser is applied: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/taobao/android/dinamic/parser/SDCardFileParser;->xmlBlockConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const-string v0, "newParser"

    .line 75
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p3, v0, v2}, Lcom/taobao/android/dinamic/parser/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 76
    instance-of v0, p3, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_4

    .line 77
    check-cast p3, Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p3

    :catch_1
    move-exception p3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New sdcard parser exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-object v1
.end method
