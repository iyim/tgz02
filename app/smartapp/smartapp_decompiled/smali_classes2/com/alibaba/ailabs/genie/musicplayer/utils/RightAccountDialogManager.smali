.class public Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;
.super Ljava/lang/Object;
.source "RightAccountDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RightAccountDialogManager"

.field private static mInstance:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;

.field private static mRightAccountDialog:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;->showRightAccountDialog(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;->dismissRightAccountDialog()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private dismissRightAccountDialog()V
    .locals 1

    .line 186
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;->mRightAccountDialog:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;->dismiss()V

    const/4 v0, 0x0

    .line 188
    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;->mRightAccountDialog:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;
    .locals 1

    .line 26
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;->mInstance:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;->mInstance:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;

    .line 29
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;->mInstance:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;

    return-object v0
.end method

.method private showRightAccountDialog(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;)V
    .locals 1

    .line 160
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$3;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$3;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;)V

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;->setClickListener(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$ClickListener;)V

    .line 181
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean$ModelBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean$ModelBean;->getRightImage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "activate_right"

    .line 180
    invoke-virtual {v0, p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;

    move-result-object p1

    sput-object p1, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;->mRightAccountDialog:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;

    .line 182
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;->mRightAccountDialog:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;->show()V

    return-void
.end method


# virtual methods
.method public activateRightDialog(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;)V
    .locals 2

    .line 109
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest;-><init>()V

    .line 110
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest;->canReceiveRightById(Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$CanReceiveRightByIdResult;)V

    return-void
.end method

.method public weatherActivateRightDialog(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;)V
    .locals 2

    .line 34
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest;-><init>()V

    .line 35
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest;->canReceiveRightById(Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$CanReceiveRightByIdResult;)V

    return-void
.end method
