.class public final synthetic Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DeviceInfoView$WIyxK1j8kO_9eIKEZpChyrnbojA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView$IEditDoneListener;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView$IEditDoneListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DeviceInfoView$WIyxK1j8kO_9eIKEZpChyrnbojA;->f$0:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView$IEditDoneListener;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DeviceInfoView$WIyxK1j8kO_9eIKEZpChyrnbojA;->f$0:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView$IEditDoneListener;

    invoke-static {v0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->lambda$setEditDoneListener$37(Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView$IEditDoneListener;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
