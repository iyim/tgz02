.class public Lcom/alibaba/ailabs/genie/genieui/GenieUiController$InstanceHolder;
.super Ljava/lang/Object;
.source "GenieUiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/genieui/GenieUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceHolder"
.end annotation


# static fields
.field static instance:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1034
    new-instance v0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$InstanceHolder;->instance:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
