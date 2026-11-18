.class public Lcom/alibaba/ailabs/genie/authservice/dialogfragment/DialogFragmentFactory;
.super Ljava/lang/Object;
.source "DialogFragmentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDialogFragment(I)Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 12
    new-instance p1, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;-><init>()V

    return-object p1

    .line 15
    :cond_1
    new-instance p1, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;-><init>()V

    return-object p1
.end method
