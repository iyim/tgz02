.class public final Lorg/jdom/Namespace;
.super Ljava/lang/Object;
.source "Namespace.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: Namespace.java,v $ $Revision: 1.43 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $"

.field public static final NO_NAMESPACE:Lorg/jdom/Namespace;

.field public static final XML_NAMESPACE:Lorg/jdom/Namespace;

.field private static namespaces:Ljava/util/HashMap;


# instance fields
.field private prefix:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 97
    new-instance v0, Lorg/jdom/Namespace;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Lorg/jdom/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    .line 100
    new-instance v0, Lorg/jdom/Namespace;

    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v0, v1, v2}, Lorg/jdom/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/jdom/Namespace;->namespaces:Ljava/util/HashMap;

    .line 117
    sget-object v0, Lorg/jdom/Namespace;->namespaces:Ljava/util/HashMap;

    new-instance v1, Lorg/jdom/NamespaceKey;

    sget-object v2, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-direct {v1, v2}, Lorg/jdom/NamespaceKey;-><init>(Lorg/jdom/Namespace;)V

    sget-object v2, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/jdom/Namespace;->namespaces:Ljava/util/HashMap;

    new-instance v1, Lorg/jdom/NamespaceKey;

    sget-object v2, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    invoke-direct {v1, v2}, Lorg/jdom/NamespaceKey;-><init>(Lorg/jdom/Namespace;)V

    sget-object v2, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lorg/jdom/Namespace;->prefix:Ljava/lang/String;

    .line 218
    iput-object p2, p0, Lorg/jdom/Namespace;->uri:Ljava/lang/String;

    return-void
.end method

.method public static getNamespace(Ljava/lang/String;)Lorg/jdom/Namespace;
    .locals 1

    const-string v0, ""

    .line 205
    invoke-static {v0, p0}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object p0

    return-object p0
.end method

.method public static getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;
    .locals 5

    const-string v0, ""

    if-eqz p0, :cond_2

    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    move-object p1, v0

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p1, :cond_c

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move-object p0, v0

    .line 149
    :cond_4
    :goto_1
    new-instance v1, Lorg/jdom/NamespaceKey;

    invoke-direct {v1, p0, p1}, Lorg/jdom/NamespaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v2, Lorg/jdom/Namespace;->namespaces:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom/Namespace;

    if-eqz v2, :cond_5

    return-object v2

    .line 157
    :cond_5
    invoke-static {p0}, Lorg/jdom/Verifier;->checkNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Namespace prefix"

    if-nez v2, :cond_b

    .line 160
    invoke-static {p1}, Lorg/jdom/Verifier;->checkNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Namespace URI"

    if-nez v2, :cond_a

    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    .line 166
    :cond_6
    new-instance p0, Lorg/jdom/IllegalNameException;

    const-string p1, "namespace"

    const-string v1, "Namespace URIs must be non-null and non-empty Strings"

    invoke-direct {p0, v0, p1, v1}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    const-string v0, "xml"

    .line 176
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 191
    new-instance v0, Lorg/jdom/Namespace;

    invoke-direct {v0, p0, p1}, Lorg/jdom/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-object p0, Lorg/jdom/Namespace;->namespaces:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 185
    :cond_8
    new-instance p0, Lorg/jdom/IllegalNameException;

    const-string v0, "The http://www.w3.org/XML/1998/namespace must be bound to the xml prefix."

    invoke-direct {p0, p1, v4, v0}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 177
    :cond_9
    new-instance p1, Lorg/jdom/IllegalNameException;

    const-string v0, "The xml prefix can only be bound to http://www.w3.org/XML/1998/namespace"

    invoke-direct {p1, p0, v3, v0}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_a
    new-instance p0, Lorg/jdom/IllegalNameException;

    invoke-direct {p0, p1, v4, v2}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 158
    :cond_b
    new-instance p1, Lorg/jdom/IllegalNameException;

    invoke-direct {p1, p0, v3, v2}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_c
    :goto_3
    sget-object p0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 251
    :cond_0
    instance-of v0, p1, Lorg/jdom/Namespace;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lorg/jdom/Namespace;->uri:Ljava/lang/String;

    nop

    nop

    iget-object p1, p1, Lorg/jdom/Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/jdom/Namespace;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/jdom/Namespace;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/jdom/Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[Namespace: prefix \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/jdom/Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\" is mapped to URI \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/jdom/Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
