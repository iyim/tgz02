.class Lunet/org/chromium/base/ContextUtils$Holder;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lunet/org/chromium/base/ContextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static a:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Lunet/org/chromium/base/ContextUtils;->access$000()Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lunet/org/chromium/base/ContextUtils$Holder;->a:Landroid/content/SharedPreferences;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic a()Landroid/content/SharedPreferences;
    .locals 1

    .line 26
    sget-object v0, Lunet/org/chromium/base/ContextUtils$Holder;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic a(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    .line 26
    sput-object p0, Lunet/org/chromium/base/ContextUtils$Holder;->a:Landroid/content/SharedPreferences;

    return-object p0
.end method
