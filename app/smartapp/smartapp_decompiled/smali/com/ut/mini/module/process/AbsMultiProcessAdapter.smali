.class public abstract Lcom/ut/mini/module/process/AbsMultiProcessAdapter;
.super Ljava/lang/Object;
.source "AbsMultiProcessAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public abstract getSubProcessUTTrackerClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ut/mini/UTTracker;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSubProcessWVApiPluginClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/taobao/windvane/jsbridge/WVApiPlugin;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initProxy()V
.end method

.method public abstract isUiSubProcess()Z
.end method

.method public abstract registerActivityLifecycleCallbacks()V
.end method
