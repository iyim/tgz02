.class public Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar$Callback;
.super Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$BaseCallback;
.source "TopSnackBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$BaseCallback<",
        "Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;",
        ">;"
    }
.end annotation


# static fields
.field public static final DISMISS_EVENT_ACTION:I = 0x1

.field public static final DISMISS_EVENT_CONSECUTIVE:I = 0x4

.field public static final DISMISS_EVENT_MANUAL:I = 0x3

.field public static final DISMISS_EVENT_SWIPE:I = 0x0

.field public static final DISMISS_EVENT_TIMEOUT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$BaseCallback;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onDismissed(Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    .line 75
    check-cast p1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar$Callback;->onDismissed(Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;I)V

    return-void
.end method

.method public onShown(Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public bridge synthetic onShown(Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar$Callback;->onShown(Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;)V

    return-void
.end method
