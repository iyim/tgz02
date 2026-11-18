.class Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog$1;
.super Ljava/lang/Object;
.source "VoicePrintPayProcalDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->dismiss()V

    return-void
.end method
