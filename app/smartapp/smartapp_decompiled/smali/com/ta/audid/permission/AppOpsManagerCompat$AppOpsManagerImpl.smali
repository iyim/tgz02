.class Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManagerImpl;
.super Ljava/lang/Object;
.source "AppOpsManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/audid/permission/AppOpsManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppOpsManagerImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/ta/audid/permission/AppOpsManagerCompat$1;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManagerImpl;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
