.class Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;
.super Ljava/lang/Object;
.source "VerifyLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifyLogTask"
.end annotation


# instance fields
.field extParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field param1:Ljava/lang/String;

.field param2:Ljava/lang/String;

.field param3:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

.field type:Ljava/lang/String;

.field userCaseID:Ljava/lang/String;

.field verifyId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->type:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->userCaseID:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->param1:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->param2:Ljava/lang/String;

    .line 81
    iput-object p6, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->param3:Ljava/lang/String;

    .line 82
    iput-object p7, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->extParams:Ljava/util/Map;

    .line 83
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$000(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->verifyId:Ljava/lang/String;

    .line 84
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
