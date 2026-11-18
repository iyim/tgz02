.class Lcom/taobao/android/dinamicx/template/download/DXDownloadManager$1;
.super Ljava/lang/Object;
.source "DXDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;->downloadTemplates(Ljava/lang/String;Ljava/util/List;Lcom/taobao/android/dinamicx/template/download/IDXUnzipCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;

.field final synthetic val$bizType:Ljava/lang/String;

.field final synthetic val$templateItems:Ljava/util/List;

.field final synthetic val$unzipCallback:Lcom/taobao/android/dinamicx/template/download/IDXUnzipCallback;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;Ljava/util/List;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/IDXUnzipCallback;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager$1;->this$0:Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager$1;->val$templateItems:Ljava/util/List;

    iput-object p3, p0, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager$1;->val$bizType:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager$1;->val$unzipCallback:Lcom/taobao/android/dinamicx/template/download/IDXUnzipCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 48
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager$1;->val$templateItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 49
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 50
    new-instance v4, Lcom/taobao/android/dinamicx/template/download/DXDownloadResult;

    invoke-direct {v4}, Lcom/taobao/android/dinamicx/template/download/DXDownloadResult;-><init>()V

    .line 51
    iget-object v5, p0, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager$1;->this$0:Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;

    iget-object v6, p0, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager$1;->val$bizType:Ljava/lang/String;

    iget-object v7, p0, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager$1;->val$unzipCallback:Lcom/taobao/android/dinamicx/template/download/IDXUnzipCallback;

    new-instance v8, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager$1$1;

    invoke-direct {v8, p0, v4, v2, v3}, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager$1$1;-><init>(Lcom/taobao/android/dinamicx/template/download/DXDownloadManager$1;Lcom/taobao/android/dinamicx/template/download/DXDownloadResult;J)V

    invoke-static {v5, v6, v1, v7, v8}, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;->access$300(Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/taobao/android/dinamicx/template/download/IDXUnzipCallback;Lcom/taobao/android/dinamicx/template/download/DXDownloadManager$IDXDownloadCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method
