.class public final Lcom/taobao/android/dinamic/model/DinamicParams$Builder;
.super Ljava/lang/Object;
.source "DinamicParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamic/model/DinamicParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private currentData:Ljava/lang/Object;

.field private dinamicContext:Ljava/lang/Object;

.field private module:Ljava/lang/String;

.field private originalData:Ljava/lang/Object;

.field private viewResult:Lcom/taobao/android/dinamic/view/ViewResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "default"

    .line 65
    iput-object v0, p0, Lcom/taobao/android/dinamic/model/DinamicParams$Builder;->module:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/dinamic/model/DinamicParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/taobao/android/dinamic/model/DinamicParams$Builder;->module:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/android/dinamic/model/DinamicParams$Builder;)Ljava/lang/Object;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/taobao/android/dinamic/model/DinamicParams$Builder;->currentData:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/android/dinamic/model/DinamicParams$Builder;)Ljava/lang/Object;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/taobao/android/dinamic/model/DinamicParams$Builder;->dinamicContext:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/android/dinamic/model/DinamicParams$Builder;)Ljava/lang/Object;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/taobao/android/dinamic/model/DinamicParams$Builder;->originalData:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/taobao/android/dinamic/model/DinamicParams$Builder;)Lcom/taobao/android/dinamic/view/ViewResult;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/taobao/android/dinamic/model/DinamicParams$Builder;->viewResult:Lcom/taobao/android/dinamic/view/ViewResult;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/taobao/android/dinamic/model/DinamicParams;
    .locals 2

    .line 104
    new-instance v0, Lcom/taobao/android/dinamic/model/DinamicParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/android/dinamic/model/DinamicParams;-><init>(Lcom/taobao/android/dinamic/model/DinamicParams$Builder;Lcom/taobao/android/dinamic/model/DinamicParams$1;)V

    return-object v0
.end method

.method public withCurrentData(Ljava/lang/Object;)Lcom/taobao/android/dinamic/model/DinamicParams$Builder;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/taobao/android/dinamic/model/DinamicParams$Builder;->currentData:Ljava/lang/Object;

    return-object p0
.end method

.method public withDinamicContext(Ljava/lang/Object;)Lcom/taobao/android/dinamic/model/DinamicParams$Builder;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/taobao/android/dinamic/model/DinamicParams$Builder;->dinamicContext:Ljava/lang/Object;

    return-object p0
.end method

.method public withModule(Ljava/lang/String;)Lcom/taobao/android/dinamic/model/DinamicParams$Builder;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/taobao/android/dinamic/model/DinamicParams$Builder;->module:Ljava/lang/String;

    return-object p0
.end method

.method public withOriginalData(Ljava/lang/Object;)Lcom/taobao/android/dinamic/model/DinamicParams$Builder;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/taobao/android/dinamic/model/DinamicParams$Builder;->originalData:Ljava/lang/Object;

    return-object p0
.end method

.method public withViewResult(Lcom/taobao/android/dinamic/view/ViewResult;)Lcom/taobao/android/dinamic/model/DinamicParams$Builder;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/taobao/android/dinamic/model/DinamicParams$Builder;->viewResult:Lcom/taobao/android/dinamic/view/ViewResult;

    return-object p0
.end method
