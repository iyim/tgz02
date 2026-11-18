.class public Lcom/taobao/android/dinamic/model/DinamicParams;
.super Ljava/lang/Object;
.source "DinamicParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamic/model/DinamicParams$Builder;
    }
.end annotation


# instance fields
.field private currentData:Ljava/lang/Object;

.field private dinamicContext:Ljava/lang/Object;

.field private module:Ljava/lang/String;

.field private originalData:Ljava/lang/Object;

.field private viewResult:Lcom/taobao/android/dinamic/view/ViewResult;


# direct methods
.method private constructor <init>(Lcom/taobao/android/dinamic/model/DinamicParams$Builder;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "default"

    .line 14
    iput-object v0, p0, Lcom/taobao/android/dinamic/model/DinamicParams;->module:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/taobao/android/dinamic/model/DinamicParams$Builder;->access$000(Lcom/taobao/android/dinamic/model/DinamicParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamic/model/DinamicParams;->module:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/taobao/android/dinamic/model/DinamicParams$Builder;->access$100(Lcom/taobao/android/dinamic/model/DinamicParams$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamic/model/DinamicParams;->currentData:Ljava/lang/Object;

    .line 57
    invoke-static {p1}, Lcom/taobao/android/dinamic/model/DinamicParams$Builder;->access$200(Lcom/taobao/android/dinamic/model/DinamicParams$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamic/model/DinamicParams;->dinamicContext:Ljava/lang/Object;

    .line 58
    invoke-static {p1}, Lcom/taobao/android/dinamic/model/DinamicParams$Builder;->access$300(Lcom/taobao/android/dinamic/model/DinamicParams$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamic/model/DinamicParams;->originalData:Ljava/lang/Object;

    .line 59
    invoke-static {p1}, Lcom/taobao/android/dinamic/model/DinamicParams$Builder;->access$400(Lcom/taobao/android/dinamic/model/DinamicParams$Builder;)Lcom/taobao/android/dinamic/view/ViewResult;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/android/dinamic/model/DinamicParams;->viewResult:Lcom/taobao/android/dinamic/view/ViewResult;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/android/dinamic/model/DinamicParams$Builder;Lcom/taobao/android/dinamic/model/DinamicParams$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamic/model/DinamicParams;-><init>(Lcom/taobao/android/dinamic/model/DinamicParams$Builder;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCurrentData()Ljava/lang/Object;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/taobao/android/dinamic/model/DinamicParams;->currentData:Ljava/lang/Object;

    return-object v0
.end method

.method public getDinamicContext()Ljava/lang/Object;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/taobao/android/dinamic/model/DinamicParams;->dinamicContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/taobao/android/dinamic/model/DinamicParams;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalData()Ljava/lang/Object;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/taobao/android/dinamic/model/DinamicParams;->originalData:Ljava/lang/Object;

    return-object v0
.end method

.method public getViewResult()Lcom/taobao/android/dinamic/view/ViewResult;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/taobao/android/dinamic/model/DinamicParams;->viewResult:Lcom/taobao/android/dinamic/view/ViewResult;

    return-object v0
.end method

.method public setCurrentData(Ljava/lang/Object;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/taobao/android/dinamic/model/DinamicParams;->currentData:Ljava/lang/Object;

    return-void
.end method
