.class public Lcom/taobao/android/dinamic/view/ViewResult;
.super Ljava/lang/Object;
.source "ViewResult.java"


# instance fields
.field private bindDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private dinamicError:Lcom/taobao/android/dinamic/view/DinamicError;

.field private dinamicTemplate:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

.field private module:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/taobao/android/dinamic/view/ViewResult;->module:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBindDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/taobao/android/dinamic/view/ViewResult;->bindDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDinamicError()Lcom/taobao/android/dinamic/view/DinamicError;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/taobao/android/dinamic/view/ViewResult;->dinamicError:Lcom/taobao/android/dinamic/view/DinamicError;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/taobao/android/dinamic/view/DinamicError;

    iget-object v1, p0, Lcom/taobao/android/dinamic/view/ViewResult;->module:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamic/view/DinamicError;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/android/dinamic/view/ViewResult;->dinamicError:Lcom/taobao/android/dinamic/view/DinamicError;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamic/view/ViewResult;->dinamicError:Lcom/taobao/android/dinamic/view/DinamicError;

    return-object v0
.end method

.method public getDinamicTemplate()Lcom/taobao/android/dinamic/tempate/DinamicTemplate;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/taobao/android/dinamic/view/ViewResult;->dinamicTemplate:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/taobao/android/dinamic/view/ViewResult;->view:Landroid/view/View;

    return-object v0
.end method

.method public isBindDataSuccess()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/taobao/android/dinamic/view/ViewResult;->dinamicError:Lcom/taobao/android/dinamic/view/DinamicError;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/taobao/android/dinamic/view/DinamicError;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isRenderSuccess()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/taobao/android/dinamic/view/ViewResult;->dinamicError:Lcom/taobao/android/dinamic/view/DinamicError;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/taobao/android/dinamic/view/DinamicError;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setBindDataList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/taobao/android/dinamic/view/ViewResult;->bindDataList:Ljava/util/ArrayList;

    return-void
.end method

.method public setDinamicTemplate(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/taobao/android/dinamic/view/ViewResult;->dinamicTemplate:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/taobao/android/dinamic/view/ViewResult;->view:Landroid/view/View;

    return-void
.end method
