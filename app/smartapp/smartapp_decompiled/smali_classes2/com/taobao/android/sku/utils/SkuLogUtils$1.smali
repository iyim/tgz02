.class final Lcom/taobao/android/sku/utils/SkuLogUtils$1;
.super Ljava/util/HashMap;
.source "SkuLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/sku/utils/SkuLogUtils;->alarmUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$itemId:Ljava/lang/String;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/taobao/android/sku/utils/SkuLogUtils$1;->val$msg:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/sku/utils/SkuLogUtils$1;->val$itemId:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/android/sku/utils/SkuLogUtils$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 91
    iget-object p1, p0, Lcom/taobao/android/sku/utils/SkuLogUtils$1;->val$msg:Ljava/lang/String;

    const-string p2, "errorMsg"

    invoke-virtual {p0, p2, p1}, Lcom/taobao/android/sku/utils/SkuLogUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object p1, p0, Lcom/taobao/android/sku/utils/SkuLogUtils$1;->val$itemId:Ljava/lang/String;

    const-string p2, "itemId"

    invoke-virtual {p0, p2, p1}, Lcom/taobao/android/sku/utils/SkuLogUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p1, p0, Lcom/taobao/android/sku/utils/SkuLogUtils$1;->val$url:Ljava/lang/String;

    const-string p2, "url"

    invoke-virtual {p0, p2, p1}, Lcom/taobao/android/sku/utils/SkuLogUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
