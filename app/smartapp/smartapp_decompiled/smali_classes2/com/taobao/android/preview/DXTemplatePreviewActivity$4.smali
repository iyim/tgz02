.class Lcom/taobao/android/preview/DXTemplatePreviewActivity$4;
.super Landroid/os/AsyncTask;
.source "DXTemplatePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/preview/DXTemplatePreviewActivity;->downLoadMockData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/alibaba/fastjson/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/preview/DXTemplatePreviewActivity;


# direct methods
.method constructor <init>(Lcom/taobao/android/preview/DXTemplatePreviewActivity;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity$4;->this$0:Lcom/taobao/android/preview/DXTemplatePreviewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 4

    const/4 v0, 0x0

    .line 191
    :try_start_0
    new-instance v1, Lcom/taobao/android/dinamicx/template/download/HttpDownloader;

    invoke-direct {v1}, Lcom/taobao/android/dinamicx/template/download/HttpDownloader;-><init>()V

    const/4 v2, 0x0

    .line 192
    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Lcom/taobao/android/dinamicx/template/download/HttpDownloader;->download(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 195
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 198
    iget-object p1, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity$4;->this$0:Lcom/taobao/android/preview/DXTemplatePreviewActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "respnese.body ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->access$100(Lcom/taobao/android/preview/DXTemplatePreviewActivity;Ljava/lang/String;)V

    .line 199
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 203
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 184
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity$4;->doInBackground([Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity$4;->this$0:Lcom/taobao/android/preview/DXTemplatePreviewActivity;

    const-string v1, "\u83b7\u53d6mock\u6570\u636e\u6210\u529f"

    invoke-static {v0, v1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->access$100(Lcom/taobao/android/preview/DXTemplatePreviewActivity;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity$4;->this$0:Lcom/taobao/android/preview/DXTemplatePreviewActivity;

    invoke-static {v0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->access$200(Lcom/taobao/android/preview/DXTemplatePreviewActivity;Lcom/alibaba/fastjson/JSONArray;)V

    .line 216
    iget-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity$4;->this$0:Lcom/taobao/android/preview/DXTemplatePreviewActivity;

    invoke-static {v0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->access$300(Lcom/taobao/android/preview/DXTemplatePreviewActivity;Lcom/alibaba/fastjson/JSONArray;)V

    .line 217
    iget-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity$4;->this$0:Lcom/taobao/android/preview/DXTemplatePreviewActivity;

    invoke-static {v0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->access$400(Lcom/taobao/android/preview/DXTemplatePreviewActivity;Lcom/alibaba/fastjson/JSONArray;)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity$4;->this$0:Lcom/taobao/android/preview/DXTemplatePreviewActivity;

    invoke-static {p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->access$500(Lcom/taobao/android/preview/DXTemplatePreviewActivity;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 184
    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity$4;->onPostExecute(Lcom/alibaba/fastjson/JSONArray;)V

    return-void
.end method
