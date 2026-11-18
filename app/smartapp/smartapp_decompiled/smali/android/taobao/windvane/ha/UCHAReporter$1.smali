.class final Landroid/taobao/windvane/ha/UCHAReporter$1;
.super Ljava/lang/Object;
.source "UCHAReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/ha/UCHAReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 57
    invoke-static {}, Landroid/taobao/windvane/ha/UCHAReporter;->getInstance()Landroid/taobao/windvane/ha/UCHAReporter;

    move-result-object v0

    invoke-static {v0}, Landroid/taobao/windvane/ha/UCHAReporter;->access$000(Landroid/taobao/windvane/ha/UCHAReporter;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
