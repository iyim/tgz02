.class public final Lcom/uc/sandboxExport/Switches;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation build Lcom/uc/sandboxExport/Api;
.end annotation


# static fields
.field public static final DEBUG_RENDERER_DEBUG_LOG:Ljava/lang/String; = "debug.uc.renderer_debug_log"

.field public static final ENABLE_RENDERER_DEBUG_LOG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "debug.uc.renderer_debug_log"

    .line 12
    invoke-static {v0}, Lcom/uc/sandboxExport/helper/e;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/uc/sandboxExport/Switches;->ENABLE_RENDERER_DEBUG_LOG:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
