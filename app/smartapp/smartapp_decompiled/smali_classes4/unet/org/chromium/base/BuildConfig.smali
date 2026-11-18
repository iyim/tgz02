.class public Lunet/org/chromium/base/BuildConfig;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 7
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lunet/org/chromium/base/BuildConfig;->a:[Ljava/lang/String;

    .line 9
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lunet/org/chromium/base/BuildConfig;->b:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
