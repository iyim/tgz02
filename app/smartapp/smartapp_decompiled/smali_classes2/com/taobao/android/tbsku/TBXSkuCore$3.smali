.class Lcom/taobao/android/tbsku/TBXSkuCore$3;
.super Lcom/taobao/android/sku/data/AliXSkuAsyncTask;
.source "TBXSkuCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/tbsku/TBXSkuCore;->showSku()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/android/sku/data/AliXSkuAsyncTask<",
        "Lcom/taobao/android/tbsku/TBXSkuCore$SkuAsyncTaskInput;",
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

    .line 174
    iput-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuCore$3;->this$0:Lcom/taobao/android/tbsku/TBXSkuCore;

    invoke-direct {p0}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 174
    check-cast p1, [Lcom/taobao/android/tbsku/TBXSkuCore$SkuAsyncTaskInput;

    invoke-virtual {p0, p1}, Lcom/taobao/android/tbsku/TBXSkuCore$3;->doInBackground([Lcom/taobao/android/tbsku/TBXSkuCore$SkuAsyncTaskInput;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/taobao/android/tbsku/TBXSkuCore$SkuAsyncTaskInput;)Ljava/lang/Void;
    .locals 6

    .line 180
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore$3;->this$0:Lcom/taobao/android/tbsku/TBXSkuCore;

    .line 181
    invoke-static {v0}, Lcom/taobao/android/tbsku/TBXSkuCore;->access$300(Lcom/taobao/android/tbsku/TBXSkuCore;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/taobao/android/tbsku/TBXSkuCore$SkuAsyncTaskInput;->mUltronFile:Ljava/lang/String;

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/taobao/android/tbsku/TBXSkuCore$SkuAsyncTaskInput;->mUltronMd5:Ljava/lang/String;

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/taobao/android/tbsku/TBXSkuCore$SkuAsyncTaskInput;->mAbove:Ljava/util/Map;

    aget-object v5, p1, v1

    iget-object v5, v5, Lcom/taobao/android/tbsku/TBXSkuCore$SkuAsyncTaskInput;->mBelow:Ljava/util/Map;

    .line 180
    invoke-static {v0, v2, v3, v4, v5}, Lcom/taobao/android/sku/utils/DataFileUtils;->dealUltronComponent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/taobao/android/sku/utils/DataFileUtils$DealResult;

    move-result-object v0

    .line 186
    iget-object v2, p0, Lcom/taobao/android/tbsku/TBXSkuCore$3;->this$0:Lcom/taobao/android/tbsku/TBXSkuCore;

    .line 187
    invoke-static {v2}, Lcom/taobao/android/tbsku/TBXSkuCore;->access$300(Lcom/taobao/android/tbsku/TBXSkuCore;)Landroid/content/Context;

    move-result-object v2

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/taobao/android/tbsku/TBXSkuCore$SkuAsyncTaskInput;->mScriptFile:Ljava/lang/String;

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/taobao/android/tbsku/TBXSkuCore$SkuAsyncTaskInput;->mScriptMd5:Ljava/lang/String;

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/taobao/android/tbsku/TBXSkuCore$SkuAsyncTaskInput;->mLogics:Ljava/util/Map;

    .line 186
    invoke-static {v2, v3, v4, p1}, Lcom/taobao/android/sku/utils/DataFileUtils;->dealJavaScriptLogics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/android/sku/utils/DataFileUtils$DealResult;

    move-result-object p1

    .line 191
    iget-object v1, p0, Lcom/taobao/android/tbsku/TBXSkuCore$3;->this$0:Lcom/taobao/android/tbsku/TBXSkuCore;

    invoke-static {v1}, Lcom/taobao/android/tbsku/TBXSkuCore;->access$000(Lcom/taobao/android/tbsku/TBXSkuCore;)Lcom/taobao/android/sku/AliXSkuCore;

    move-result-object v1

    iget-object v2, v0, Lcom/taobao/android/sku/utils/DataFileUtils$DealResult;->filePath:Ljava/lang/String;

    iget-object v0, v0, Lcom/taobao/android/sku/utils/DataFileUtils$DealResult;->fileMd5:Ljava/lang/String;

    iget-object v3, p1, Lcom/taobao/android/sku/utils/DataFileUtils$DealResult;->filePath:Ljava/lang/String;

    iget-object p1, p1, Lcom/taobao/android/sku/utils/DataFileUtils$DealResult;->fileMd5:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, p1}, Lcom/taobao/android/sku/AliXSkuCore;->initDataConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 174
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/android/tbsku/TBXSkuCore$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 197
    invoke-super {p0, p1}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 198
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuCore$3;->this$0:Lcom/taobao/android/tbsku/TBXSkuCore;

    invoke-static {p1}, Lcom/taobao/android/tbsku/TBXSkuCore;->access$000(Lcom/taobao/android/tbsku/TBXSkuCore;)Lcom/taobao/android/sku/AliXSkuCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/sku/AliXSkuCore;->showSku()V

    return-void
.end method
