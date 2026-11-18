.class public Lcom/taobao/android/dinamic/parser/FileParser;
.super Lcom/taobao/android/dinamic/parser/AbstractParser;
.source "FileParser.java"


# static fields
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

    .line 28
    invoke-direct {p0}, Lcom/taobao/android/dinamic/parser/AbstractParser;-><init>()V

    .line 29
    invoke-direct {p0}, Lcom/taobao/android/dinamic/parser/FileParser;->init()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init()V
    .locals 5

    :try_start_0
    const-string v0, "android.content.res.XmlBlock"

    .line 34
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    .line 35
    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [B

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamic/parser/FileParser;->xmlBlockConstructor:Ljava/lang/reflect/Constructor;

    .line 36
    iget-object v0, p0, Lcom/taobao/android/dinamic/parser/FileParser;->xmlBlockConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Home.FileParser"

    const-string v2, "Fail to get XmlBlock"

    .line 38
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public openXmlResourceParser(Ljava/lang/String;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Lcom/taobao/android/dinamic/view/ViewResult;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 4

    const-string/jumbo v0, "xmlResourceParserError"

    .line 45
    iget-object v1, p0, Lcom/taobao/android/dinamic/parser/FileParser;->xmlBlockConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->templateManagerWithModule(Ljava/lang/String;)Lcom/taobao/android/dinamic/tempate/DTemplateManager;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->getLayoutFileManager()Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;

    move-result-object v1

    .line 54
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->getTemplateKey(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;->isLocalLayoutFileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 55
    invoke-virtual {p3}, Lcom/taobao/android/dinamic/view/ViewResult;->getDinamicError()Lcom/taobao/android/dinamic/view/DinamicError;

    move-result-object p1

    const-string/jumbo p2, "templateFileLost"

    const-string p3, "downloaded file lost"

    invoke-virtual {p1, p2, p3}, Lcom/taobao/android/dinamic/view/DinamicError;->addErrorCodeWithInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 62
    :cond_1
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->readLocalTemplate(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)[B

    move-result-object p1

    if-eqz p1, :cond_4

    .line 63
    array-length p2, p1

    if-nez p2, :cond_2

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/taobao/android/dinamic/parser/FileParser;->beforeProcess([BLcom/taobao/android/dinamic/view/ViewResult;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    :try_start_1
    iget-object p2, p0, Lcom/taobao/android/dinamic/parser/FileParser;->xmlBlockConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "newParser"

    .line 77
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lcom/taobao/android/dinamic/parser/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 78
    instance-of p2, p1, Landroid/content/res/XmlResourceParser;

    if-eqz p2, :cond_3

    .line 79
    check-cast p1, Landroid/content/res/XmlResourceParser;

    return-object p1

    .line 81
    :cond_3
    invoke-virtual {p3}, Lcom/taobao/android/dinamic/view/ViewResult;->getDinamicError()Lcom/taobao/android/dinamic/view/DinamicError;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Lcom/taobao/android/dinamic/view/DinamicError;->addErrorCodeWithInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p3}, Lcom/taobao/android/dinamic/view/ViewResult;->getDinamicError()Lcom/taobao/android/dinamic/view/DinamicError;

    move-result-object p2

    .line 87
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "byteToParserError"

    .line 86
    invoke-virtual {p2, p3, p1}, Lcom/taobao/android/dinamic/view/DinamicError;->addErrorCodeWithInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 64
    :cond_4
    :goto_0
    :try_start_2
    invoke-virtual {p3}, Lcom/taobao/android/dinamic/view/ViewResult;->getDinamicError()Lcom/taobao/android/dinamic/view/DinamicError;

    move-result-object p1

    const-string/jumbo p2, "templateFileEmpty"

    const-string v0, "downloaded file empty"

    invoke-virtual {p1, p2, v0}, Lcom/taobao/android/dinamic/view/DinamicError;->addErrorCodeWithInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v2

    :catch_1
    move-exception p1

    .line 70
    invoke-virtual {p3}, Lcom/taobao/android/dinamic/view/ViewResult;->getDinamicError()Lcom/taobao/android/dinamic/view/DinamicError;

    move-result-object p2

    .line 71
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "byteReadError"

    invoke-virtual {p2, p3, p1}, Lcom/taobao/android/dinamic/view/DinamicError;->addErrorCodeWithInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 46
    :cond_5
    :goto_1
    invoke-virtual {p3}, Lcom/taobao/android/dinamic/view/ViewResult;->getDinamicError()Lcom/taobao/android/dinamic/view/DinamicError;

    move-result-object p1

    const-string/jumbo p2, "xmlBlockConstructorReflectError"

    invoke-virtual {p1, p2, p2}, Lcom/taobao/android/dinamic/view/DinamicError;->addErrorCodeWithInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
