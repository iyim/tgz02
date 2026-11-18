.class Lunet/org/chromium/base/global_settings/ListControlManager$ListControlManagerHolder;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lunet/org/chromium/base/global_settings/ListControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListControlManagerHolder"
.end annotation


# static fields
.field static final a:Lunet/org/chromium/base/global_settings/ListControlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lunet/org/chromium/base/global_settings/ListControlManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lunet/org/chromium/base/global_settings/ListControlManager;-><init>(B)V

    sput-object v0, Lunet/org/chromium/base/global_settings/ListControlManager$ListControlManagerHolder;->a:Lunet/org/chromium/base/global_settings/ListControlManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
