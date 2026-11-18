.class Lmtopsdk/security/InnerSignImpl$2;
.super Ljava/lang/Object;
.source "InnerSignImpl.java"

# interfaces
.implements Lcom/alibaba/wireless/security/open/umid/IUMIDInitListenerEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmtopsdk/security/InnerSignImpl;->initUmidToken(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmtopsdk/security/InnerSignImpl;

.field final synthetic val$instanceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmtopsdk/security/InnerSignImpl;Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lmtopsdk/security/InnerSignImpl$2;->this$0:Lmtopsdk/security/InnerSignImpl;

    iput-object p2, p0, Lmtopsdk/security/InnerSignImpl$2;->val$instanceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUMIDInitFinishedEx(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "mtopsdk.InnerSignImpl"

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_0

    .line 105
    iget-object p2, p0, Lmtopsdk/security/InnerSignImpl$2;->val$instanceId:Ljava/lang/String;

    const-string v1, "umt"

    invoke-static {p2, v1, p1}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmtopsdk/security/InnerSignImpl$2;->val$instanceId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [initUmidToken]IUMIDComponent initUMID succeed,UMID token="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmtopsdk/security/InnerSignImpl$2;->val$instanceId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [initUmidToken]IUMIDComponent initUMID error,resultCode :"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
