.class final Lanet/channel/security/SecurityManager$1;
.super Ljava/lang/Object;
.source "SecurityManager.java"

# interfaces
.implements Lanet/channel/security/ISecurityFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/security/SecurityManager;->getSecurityFactory()Lanet/channel/security/ISecurityFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public createNonSecurity(Ljava/lang/String;)Lanet/channel/security/ISecurity;
    .locals 1

    .line 23
    new-instance v0, Lanet/channel/security/NoSecurityGuardImpl;

    invoke-direct {v0, p1}, Lanet/channel/security/NoSecurityGuardImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createSecurity(Ljava/lang/String;)Lanet/channel/security/ISecurity;
    .locals 1

    .line 18
    new-instance v0, Lanet/channel/security/SecurityGuardImpl;

    invoke-direct {v0, p1}, Lanet/channel/security/SecurityGuardImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
