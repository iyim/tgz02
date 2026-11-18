.class final Lorg/jdom/NamespaceKey;
.super Ljava/lang/Object;
.source "NamespaceKey.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: NamespaceKey.java,v $ $Revision: 1.2 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $"


# instance fields
.field private hash:I

.field private prefix:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/jdom/NamespaceKey;->prefix:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lorg/jdom/NamespaceKey;->uri:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lorg/jdom/NamespaceKey;->hash:I

    return-void
.end method

.method public constructor <init>(Lorg/jdom/Namespace;)V
    .locals 1

    .line 84
    invoke-virtual {p1}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/jdom/NamespaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 91
    :cond_0
    instance-of v1, p1, Lorg/jdom/NamespaceKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 92
    check-cast p1, Lorg/jdom/NamespaceKey;

    .line 93
    iget-object v1, p0, Lorg/jdom/NamespaceKey;->prefix:Ljava/lang/String;

    iget-object v3, p1, Lorg/jdom/NamespaceKey;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jdom/NamespaceKey;->uri:Ljava/lang/String;

    iget-object p1, p1, Lorg/jdom/NamespaceKey;->uri:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 101
    iget v0, p0, Lorg/jdom/NamespaceKey;->hash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[NamespaceKey: prefix \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/jdom/NamespaceKey;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\" is mapped to URI \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/jdom/NamespaceKey;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
