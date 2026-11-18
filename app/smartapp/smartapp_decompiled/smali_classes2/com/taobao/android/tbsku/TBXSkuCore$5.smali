.class Lcom/taobao/android/tbsku/TBXSkuCore$5;
.super Ljava/lang/Object;
.source "TBXSkuCore.java"

# interfaces
.implements Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/tbsku/TBXSkuCore;->sendRelatedAuctionsData(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/tbsku/TBXSkuCore;

.field final synthetic val$sourceItemId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/android/tbsku/TBXSkuCore;Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuCore$5;->this$0:Lcom/taobao/android/tbsku/TBXSkuCore;

    iput-object p2, p0, Lcom/taobao/android/tbsku/TBXSkuCore$5;->val$sourceItemId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/Object;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 284
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    .line 285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 289
    :cond_1
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "data"

    .line 290
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p3

    if-nez p3, :cond_2

    goto :goto_0

    .line 294
    :cond_2
    iget-object p3, p0, Lcom/taobao/android/tbsku/TBXSkuCore$5;->this$0:Lcom/taobao/android/tbsku/TBXSkuCore;

    invoke-static {p3}, Lcom/taobao/android/tbsku/TBXSkuCore;->access$400(Lcom/taobao/android/tbsku/TBXSkuCore;)Ljava/util/Map;

    move-result-object p3

    iget-object p4, p0, Lcom/taobao/android/tbsku/TBXSkuCore$5;->val$sourceItemId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuCore$5;->this$0:Lcom/taobao/android/tbsku/TBXSkuCore;

    iget-object p2, p0, Lcom/taobao/android/tbsku/TBXSkuCore$5;->val$sourceItemId:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/taobao/android/tbsku/TBXSkuCore;->access$500(Lcom/taobao/android/tbsku/TBXSkuCore;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
