.class public Lanet/channel/security/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# static fields
.field private static volatile securityFactory:Lanet/channel/security/ISecurityFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getSecurityFactory()Lanet/channel/security/ISecurityFactory;
    .locals 1

    .line 14
    sget-object v0, Lanet/channel/security/SecurityManager;->securityFactory:Lanet/channel/security/ISecurityFactory;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lanet/channel/security/SecurityManager$1;

    invoke-direct {v0}, Lanet/channel/security/SecurityManager$1;-><init>()V

    sput-object v0, Lanet/channel/security/SecurityManager;->securityFactory:Lanet/channel/security/ISecurityFactory;

    .line 27
    :cond_0
    sget-object v0, Lanet/channel/security/SecurityManager;->securityFactory:Lanet/channel/security/ISecurityFactory;

    return-object v0
.end method

.method public static setSecurityFactory(Lanet/channel/security/ISecurityFactory;)V
    .locals 0

    .line 10
    sput-object p0, Lanet/channel/security/SecurityManager;->securityFactory:Lanet/channel/security/ISecurityFactory;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
