.class Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog$1;
.super Ljava/lang/Object;
.source "VoicePrintOpenGuideDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->dismiss()V

    return-void
.end method
