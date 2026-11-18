.class Lcom/alibaba/ailabs/genie/contacts/utils/SPUtils$SharedPreferencesCompat;
.super Ljava/lang/Object;
.source "SPUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/utils/SPUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SharedPreferencesCompat"
.end annotation


# static fields
.field private static final sApplyMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 152
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/utils/SPUtils$SharedPreferencesCompat;->findApplyMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/utils/SPUtils$SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .line 182
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/utils/SPUtils$SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/utils/SPUtils$SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 194
    :catch_0
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static findApplyMethod()Ljava/lang/reflect/Method;
    .locals 3

    .line 164
    :try_start_0
    const-class v0, Landroid/content/SharedPreferences$Editor;

    const-string v1, "apply"

    const/4 v2, 0x0

    .line 165
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
