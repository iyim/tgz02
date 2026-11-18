.class final Lcom/taobao/android/sku/utils/SkuLogUtils$2;
.super Ljava/util/HashMap;
.source "SkuLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/sku/utils/SkuLogUtils;->alarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 114
    iput-object p1, p0, Lcom/taobao/android/sku/utils/SkuLogUtils$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 115
    iget-object p1, p0, Lcom/taobao/android/sku/utils/SkuLogUtils$2;->val$msg:Ljava/lang/String;

    const-string v0, "errorMsg"

    invoke-virtual {p0, v0, p1}, Lcom/taobao/android/sku/utils/SkuLogUtils$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
