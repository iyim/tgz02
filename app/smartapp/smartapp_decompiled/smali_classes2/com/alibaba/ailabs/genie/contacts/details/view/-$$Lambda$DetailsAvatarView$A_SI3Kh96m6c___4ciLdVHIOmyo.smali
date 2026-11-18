.class public final synthetic Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsAvatarView$A_SI3Kh96m6c___4ciLdVHIOmyo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView$IEditDoneListener;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView$IEditDoneListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsAvatarView$A_SI3Kh96m6c___4ciLdVHIOmyo;->f$0:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView$IEditDoneListener;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsAvatarView$A_SI3Kh96m6c___4ciLdVHIOmyo;->f$0:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView$IEditDoneListener;

    invoke-static {v0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->lambda$setEditDoneListener$43(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView$IEditDoneListener;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
