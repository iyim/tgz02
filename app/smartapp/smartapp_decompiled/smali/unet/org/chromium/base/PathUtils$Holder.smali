.class Lunet/org/chromium/base/PathUtils$Holder;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lunet/org/chromium/base/PathUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    invoke-static {}, Lunet/org/chromium/base/PathUtils;->access$000()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lunet/org/chromium/base/PathUtils$Holder;->a:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lunet/org/chromium/base/PathUtils$Holder;->a:[Ljava/lang/String;

    return-object v0
.end method
