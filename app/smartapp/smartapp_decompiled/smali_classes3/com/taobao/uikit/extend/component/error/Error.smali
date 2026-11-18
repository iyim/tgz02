.class public Lcom/taobao/uikit/extend/component/error/Error;
.super Ljava/lang/Object;
.source "Error.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/extend/component/error/Error$Factory;
    }
.end annotation


# instance fields
.field public apiName:Ljava/lang/String;

.field public errorCode:Ljava/lang/String;

.field public errorMsg:Ljava/lang/String;

.field public mappingCode:Ljava/lang/String;

.field public responseCode:I

.field public url:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/taobao/uikit/extend/component/error/Error;->responseCode:I

    .line 28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, ""

    if-eqz p1, :cond_0

    move-object p2, v0

    :cond_0
    iput-object p2, p0, Lcom/taobao/uikit/extend/component/error/Error;->mappingCode:Ljava/lang/String;

    .line 29
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p3, v0

    :cond_1
    iput-object p3, p0, Lcom/taobao/uikit/extend/component/error/Error;->errorCode:Ljava/lang/String;

    .line 30
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object p4, v0

    :cond_2
    iput-object p4, p0, Lcom/taobao/uikit/extend/component/error/Error;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/uikit/extend/component/error/Error$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/uikit/extend/component/error/Error;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/taobao/uikit/extend/component/error/Error;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/error/Error;->apiName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/uikit/extend/component/error/Error$1;)V
    .locals 0

    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/taobao/uikit/extend/component/error/Error;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    .line 23
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/taobao/uikit/extend/component/error/Error;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/uikit/extend/component/error/Error$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/taobao/uikit/extend/component/error/Error;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public toMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    iget v1, p0, Lcom/taobao/uikit/extend/component/error/Error;->responseCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "responseCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/error/Error;->mappingCode:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    const-string v3, "mappingCode"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/error/Error;->errorCode:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    const-string v3, "errorCode"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/error/Error;->errorMsg:Ljava/lang/String;

    if-nez v1, :cond_2

    move-object v1, v2

    :cond_2
    const-string v3, "errorMsg"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/error/Error;->url:Ljava/lang/String;

    if-nez v1, :cond_3

    move-object v1, v2

    :cond_3
    const-string v3, "url"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/error/Error;->apiName:Ljava/lang/String;

    if-nez v1, :cond_4

    move-object v1, v2

    :cond_4
    const-string v2, "apiName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
