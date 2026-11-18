.class Lorg/jdom/output/NamespaceStack;
.super Ljava/lang/Object;
.source "NamespaceStack.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: NamespaceStack.java,v $ $Revision: 1.14 $ $Date: 2007/11/10 05:29:01 $ $Name: jdom_1_1 $"


# instance fields
.field private prefixes:Ljava/util/Stack;

.field private uris:Ljava/util/Stack;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/jdom/output/NamespaceStack;->prefixes:Ljava/util/Stack;

    .line 88
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/jdom/output/NamespaceStack;->uris:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/jdom/output/NamespaceStack;->prefixes:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/jdom/output/NamespaceStack;->uris:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public pop()Ljava/lang/String;
    .locals 2

    .line 109
    iget-object v0, p0, Lorg/jdom/output/NamespaceStack;->prefixes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lorg/jdom/output/NamespaceStack;->uris:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-object v0
.end method

.method public push(Lorg/jdom/Namespace;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lorg/jdom/output/NamespaceStack;->prefixes:Ljava/util/Stack;

    invoke-virtual {p1}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lorg/jdom/output/NamespaceStack;->uris:Ljava/util/Stack;

    invoke-virtual {p1}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/jdom/output/NamespaceStack;->prefixes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 146
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "line.separator"

    .line 147
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Stack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/jdom/output/NamespaceStack;->prefixes:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    .line 149
    :goto_0
    iget-object v3, p0, Lorg/jdom/output/NamespaceStack;->prefixes:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 150
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lorg/jdom/output/NamespaceStack;->prefixes:Ljava/util/Stack;

    invoke-virtual {v4, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/jdom/output/NamespaceStack;->uris:Ljava/util/Stack;

    invoke-virtual {v4, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
