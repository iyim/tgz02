.class public Lcom/alibaba/ailabs/tg/mtop/SignAuthMaps;
.super Ljava/lang/Object;
.source "SignAuthMaps.java"


# static fields
.field private static signMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/tg/mtop/SignAuthMaps;->signMaps:Ljava/util/HashMap;

    .line 28
    sget-object v0, Lcom/alibaba/ailabs/tg/mtop/SignAuthMaps;->signMaps:Ljava/util/HashMap;

    const-string v1, "27196e386b875e76adf700e7ea84e4c6eee33dfa"

    const-string v2, "magicbox_d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/alibaba/ailabs/tg/mtop/SignAuthMaps;->signMaps:Ljava/util/HashMap;

    const-string v1, "835631d2fbb137fc5fe6381219db6597fc8cdd54"

    const-string v2, "magicbox_r"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/alibaba/ailabs/tg/mtop/SignAuthMaps;->signMaps:Ljava/util/HashMap;

    const-string v1, "aaacf792bf8e7ddb9ca0e196d9917a412e058a39"

    const-string v2, "haier_r"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/alibaba/ailabs/tg/mtop/SignAuthMaps;->signMaps:Ljava/util/HashMap;

    const-string v1, "90a3dd2eed3f4a388e1b1927a2cff75b8d291208"

    const-string v2, "changhong_r"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/alibaba/ailabs/tg/mtop/SignAuthMaps;->signMaps:Ljava/util/HashMap;

    const-string v1, "0a2db79dcce9d718af0d196575fa03b28a238998"

    const-string v2, "oversea_r"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/alibaba/ailabs/tg/mtop/SignAuthMaps;->signMaps:Ljava/util/HashMap;

    const-string v1, "6e40ba7ff7907d40c2f16d12e463e5e4a3f15a01"

    const-string v2, "konka_r"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/alibaba/ailabs/tg/mtop/SignAuthMaps;->signMaps:Ljava/util/HashMap;

    const-string v1, "d5c76fc87fb752dfcecc5f326ecac005ce124b98"

    const-string/jumbo v2, "tvout_r"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/alibaba/ailabs/tg/mtop/SignAuthMaps;->signMaps:Ljava/util/HashMap;

    const-string v1, "59eee8cc4d951ac4bb8014aee9afa0aefb243627"

    const-string v2, "as_r"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/alibaba/ailabs/tg/mtop/SignAuthMaps;->signMaps:Ljava/util/HashMap;

    const-string v1, "7868e8a22ae346f23dd266460db8916dd9b19aa6"

    const-string/jumbo v2, "sharp_r"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/alibaba/ailabs/tg/mtop/SignAuthMaps;->signMaps:Ljava/util/HashMap;

    const-string v1, "e12c70f6b2f5753c42b285f8fe013b1fc4703cfe"

    const-string v2, "foxconn_r"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static addSign(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 70
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    sget-object v0, Lcom/alibaba/ailabs/tg/mtop/SignAuthMaps;->signMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getSignAuthCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 15
    sget-object v0, Lcom/alibaba/ailabs/tg/mtop/SignAuthMaps;->signMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
