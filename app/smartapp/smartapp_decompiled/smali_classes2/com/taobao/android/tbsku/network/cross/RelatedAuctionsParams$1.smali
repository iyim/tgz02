.class Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams$1;
.super Lcom/alibaba/fastjson/JSONObject;
.source "RelatedAuctionsParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;->getData()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;


# direct methods
.method constructor <init>(Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;)V
    .locals 1

    .line 48
    iput-object p1, p0, Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams$1;->this$0:Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 49
    iget-object p1, p0, Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams$1;->this$0:Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;

    invoke-static {p1}, Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;->access$000(Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "itemIds"

    invoke-virtual {p0, v0, p1}, Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams$1;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
