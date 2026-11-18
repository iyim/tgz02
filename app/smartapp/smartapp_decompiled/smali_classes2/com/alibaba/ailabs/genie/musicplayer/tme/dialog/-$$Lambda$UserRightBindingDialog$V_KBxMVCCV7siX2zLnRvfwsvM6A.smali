.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$V_KBxMVCCV7siX2zLnRvfwsvM6A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$QueryRecordCallback;


# instance fields
.field private final synthetic f$0:Landroid/arch/core/util/Function;


# direct methods
.method public synthetic constructor <init>(Landroid/arch/core/util/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$V_KBxMVCCV7siX2zLnRvfwsvM6A;->f$0:Landroid/arch/core/util/Function;

    return-void
.end method


# virtual methods
.method public final success(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$V_KBxMVCCV7siX2zLnRvfwsvM6A;->f$0:Landroid/arch/core/util/Function;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;->lambda$checkHasRightRecord$89(Landroid/arch/core/util/Function;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean;)V

    return-void
.end method
