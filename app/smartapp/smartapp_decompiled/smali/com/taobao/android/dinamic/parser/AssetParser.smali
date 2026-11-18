.class public Lcom/taobao/android/dinamic/parser/AssetParser;
.super Lcom/taobao/android/dinamic/parser/AbstractParser;
.source "AssetParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Home.AssetParser"


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

    .line 26
    invoke-direct {p0}, Lcom/taobao/android/dinamic/parser/AbstractParser;-><init>()V

    .line 27
    invoke-direct {p0}, Lcom/taobao/android/dinamic/parser/AssetParser;->init()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init()V
    .locals 5

    :try_start_0
    const-string v0, "android.content.res.XmlBlock"

    .line 32
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    .line 33
    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [B

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamic/parser/AssetParser;->xmlBlockConstructor:Ljava/lang/reflect/Constructor;

    .line 34
    iget-object v0, p0, Lcom/taobao/android/dinamic/parser/AssetParser;->xmlBlockConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Home.AssetParser"

    const-string v2, "Fail to get XmlBlock"

    .line 36
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public openXmlResourceParser(Ljava/lang/String;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Lcom/taobao/android/dinamic/view/ViewResult;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/taobao/android/dinamic/parser/AssetParser;->xmlBlockConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    invoke-static {p1}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->templateManagerWithModule(Ljava/lang/String;)Lcom/taobao/android/dinamic/tempate/DTemplateManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->readAssert(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)[B

    move-result-object p1

    .line 49
    invoke-virtual {p0, p1, p3}, Lcom/taobao/android/dinamic/parser/AssetParser;->beforeProcess([BLcom/taobao/android/dinamic/view/ViewResult;)[B

    move-result-object p1

    if-eqz p1, :cond_3

    .line 51
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File parser is applied: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Home.AssetParser"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :try_start_0
    iget-object p2, p0, Lcom/taobao/android/dinamic/parser/AssetParser;->xmlBlockConstructor:Ljava/lang/reflect/Constructor;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "newParser"

    .line 63
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/taobao/android/dinamic/parser/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 64
    instance-of p2, p1, Landroid/content/res/XmlResourceParser;

    if-eqz p2, :cond_2

    .line 65
    check-cast p1, Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p3}, Lcom/taobao/android/dinamic/view/ViewResult;->getDinamicError()Lcom/taobao/android/dinamic/view/DinamicError;

    move-result-object p2

    .line 69
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "byteToParserError"

    .line 68
    invoke-virtual {p2, p3, p1}, Lcom/taobao/android/dinamic/view/DinamicError;->addErrorCodeWithInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1

    .line 52
    :cond_3
    :goto_0
    invoke-virtual {p3}, Lcom/taobao/android/dinamic/view/ViewResult;->getDinamicError()Lcom/taobao/android/dinamic/view/DinamicError;

    move-result-object p1

    const-string/jumbo p2, "templateFileEmpty"

    const-string p3, "assert error"

    invoke-virtual {p1, p2, p3}, Lcom/taobao/android/dinamic/view/DinamicError;->addErrorCodeWithInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-object v1
.end method
