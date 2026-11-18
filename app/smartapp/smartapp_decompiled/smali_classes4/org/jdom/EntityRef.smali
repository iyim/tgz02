.class public Lorg/jdom/EntityRef;
.super Lorg/jdom/Content;
.source "EntityRef.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: EntityRef.java,v $ $Revision: 1.22 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $"


# instance fields
.field protected name:Ljava/lang/String;

.field protected publicID:Ljava/lang/String;

.field protected systemID:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0, v0}, Lorg/jdom/EntityRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, v0, p2}, Lorg/jdom/EntityRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    .line 127
    invoke-virtual {p0, p1}, Lorg/jdom/EntityRef;->setName(Ljava/lang/String;)Lorg/jdom/EntityRef;

    .line 128
    invoke-virtual {p0, p2}, Lorg/jdom/EntityRef;->setPublicID(Ljava/lang/String;)Lorg/jdom/EntityRef;

    .line 129
    invoke-virtual {p0, p3}, Lorg/jdom/EntityRef;->setSystemID(Ljava/lang/String;)Lorg/jdom/EntityRef;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/jdom/EntityRef;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicID()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/jdom/EntityRef;->publicID:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemID()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/jdom/EntityRef;->systemID:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lorg/jdom/EntityRef;
    .locals 3

    .line 181
    invoke-static {p1}, Lorg/jdom/Verifier;->checkXMLName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 185
    iput-object p1, p0, Lorg/jdom/EntityRef;->name:Ljava/lang/String;

    return-object p0

    .line 183
    :cond_0
    new-instance v1, Lorg/jdom/IllegalNameException;

    const-string v2, "EntityRef"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public setPublicID(Ljava/lang/String;)Lorg/jdom/EntityRef;
    .locals 3

    .line 198
    invoke-static {p1}, Lorg/jdom/Verifier;->checkPublicID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 202
    iput-object p1, p0, Lorg/jdom/EntityRef;->publicID:Ljava/lang/String;

    return-object p0

    .line 200
    :cond_0
    new-instance v1, Lorg/jdom/IllegalDataException;

    const-string v2, "EntityRef"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public setSystemID(Ljava/lang/String;)Lorg/jdom/EntityRef;
    .locals 3

    .line 215
    invoke-static {p1}, Lorg/jdom/Verifier;->checkSystemLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 219
    iput-object p1, p0, Lorg/jdom/EntityRef;->systemID:Ljava/lang/String;

    return-object p0

    .line 217
    :cond_0
    new-instance v1, Lorg/jdom/IllegalDataException;

    const-string v2, "EntityRef"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 231
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[EntityRef: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/jdom/EntityRef;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
