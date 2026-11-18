.class final Lcom/alibaba/ailabs/genie/second/genie/GenieStateManager;
.super Ljava/lang/Object;
.source "GenieStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/second/genie/GenieStateManager$OnWifiChangeListener;,
        Lcom/alibaba/ailabs/genie/second/genie/GenieStateManager$OnAuthInfoChangeListener;,
        Lcom/alibaba/ailabs/genie/second/genie/GenieStateManager$Holder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieStateManager;
    .locals 1

    .line 14
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieStateManager$Holder;->access$000()Lcom/alibaba/ailabs/genie/second/genie/GenieStateManager;

    move-result-object v0

    return-object v0
.end method
