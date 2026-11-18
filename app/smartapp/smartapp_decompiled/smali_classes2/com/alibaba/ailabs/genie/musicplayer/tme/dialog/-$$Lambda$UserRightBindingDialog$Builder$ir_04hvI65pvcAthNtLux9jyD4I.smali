.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$Builder$ir_04hvI65pvcAthNtLux9jyD4I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/core/util/Function;


# instance fields
.field private final synthetic f$0:Landroid/arch/core/util/Function;


# direct methods
.method public synthetic constructor <init>(Landroid/arch/core/util/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$Builder$ir_04hvI65pvcAthNtLux9jyD4I;->f$0:Landroid/arch/core/util/Function;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$Builder$ir_04hvI65pvcAthNtLux9jyD4I;->f$0:Landroid/arch/core/util/Function;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->lambda$getNickName$85(Landroid/arch/core/util/Function;Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
