.class Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManager23;
.super Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManagerImpl;
.source "AppOpsManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/audid/permission/AppOpsManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppOpsManager23"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManagerImpl;-><init>(Lcom/ta/audid/permission/AppOpsManagerCompat$1;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/ta/audid/permission/AppOpsManagerCompat$1;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManager23;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .locals 0

    .line 40
    invoke-static {p1, p2, p3, p4}, Lcom/ta/audid/permission/AppOpsManagerCompat23;->noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 44
    invoke-static {p1, p2, p3}, Lcom/ta/audid/permission/AppOpsManagerCompat23;->noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-static {p1}, Lcom/ta/audid/permission/AppOpsManagerCompat23;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
