.class Lcom/taobao/android/tbsku/TBXSkuCore$1;
.super Lcom/taobao/android/sku/data/AliXSkuAsyncTask;
.source "TBXSkuCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/tbsku/TBXSkuCore;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/android/sku/data/AliXSkuAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/tbsku/TBXSkuCore;


# direct methods
.method constructor <init>(Lcom/taobao/android/tbsku/TBXSkuCore;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuCore$1;->this$0:Lcom/taobao/android/tbsku/TBXSkuCore;

    invoke-direct {p0}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/android/tbsku/TBXSkuCore$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 108
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/android/tbsku/TBXSkuCore$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 118
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuCore$1;->this$0:Lcom/taobao/android/tbsku/TBXSkuCore;

    invoke-static {p1}, Lcom/taobao/android/tbsku/TBXSkuCore;->access$000(Lcom/taobao/android/tbsku/TBXSkuCore;)Lcom/taobao/android/sku/AliXSkuCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/sku/AliXSkuCore;->destroy()V

    return-void
.end method
