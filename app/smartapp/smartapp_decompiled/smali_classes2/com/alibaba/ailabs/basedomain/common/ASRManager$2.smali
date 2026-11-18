.class Lcom/alibaba/ailabs/basedomain/common/ASRManager$2;
.super Ljava/lang/Object;
.source "ASRManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnGetMediaPolicyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/common/ASRManager;->setAlarmState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/common/ASRManager;

.field final synthetic val$isAlarmRing:Z


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/common/ASRManager;Z)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager$2;->this$0:Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    iput-boolean p2, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager$2;->val$isAlarmRing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetMediaPolicy()I
    .locals 1

    .line 222
    iget-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager$2;->val$isAlarmRing:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
