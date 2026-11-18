.class public final Lcom/alibaba/ailabs/genie/second/utils/ContextUtils;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# static fields
.field private static sApplicationContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static get()Landroid/content/Context;
    .locals 1

    .line 20
    sget-object v0, Lcom/alibaba/ailabs/genie/second/utils/ContextUtils;->sApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/alibaba/ailabs/genie/second/utils/ContextUtils;->sApplicationContext:Landroid/content/Context;

    return-void
.end method
