.class Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils$Holder;
.super Ljava/lang/Object;
.source "SharedPreferenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->access$000()Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils$Holder;->sSharedPreferences:Landroid/content/SharedPreferences;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Landroid/content/SharedPreferences;
    .locals 1

    .line 98
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils$Holder;->sSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method
