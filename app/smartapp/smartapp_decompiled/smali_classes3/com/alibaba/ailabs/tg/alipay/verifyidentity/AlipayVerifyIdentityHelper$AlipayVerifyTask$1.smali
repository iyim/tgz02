.class Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask$1;
.super Ljava/lang/Object;
.source "AlipayVerifyIdentityHelper.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;->startVerifyByVerifyId(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask$1;->this$0:Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerifyResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verify result->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "1000"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask$1;->this$0:Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;

    invoke-static {p1}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;->access$100(Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask$1;->this$0:Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;

    const-string p2, "-1"

    const-string p3, "verify failure!"

    invoke-static {p1, p2, p3}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;->access$200(Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
