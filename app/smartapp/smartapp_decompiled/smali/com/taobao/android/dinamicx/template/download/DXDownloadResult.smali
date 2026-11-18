.class public Lcom/taobao/android/dinamicx/template/download/DXDownloadResult;
.super Ljava/lang/Object;
.source "DXDownloadResult.java"


# instance fields
.field isSuccess:Z

.field item:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/download/DXDownloadResult;->item:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/template/download/DXDownloadResult;->isSuccess:Z

    return v0
.end method

.method public setItem(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/taobao/android/dinamicx/template/download/DXDownloadResult;->item:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/template/download/DXDownloadResult;->isSuccess:Z

    return-void
.end method
