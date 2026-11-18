.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$wMGnvP2l1sqKVbdC7D_5DdZtV4c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$wMGnvP2l1sqKVbdC7D_5DdZtV4c;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$wMGnvP2l1sqKVbdC7D_5DdZtV4c;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->lambda$initView$105$TMEAccountBindFragment(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;)V

    return-void
.end method
