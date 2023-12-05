#*****************************************************************************#
#  [graph]                                                                #
#                                                                             #
#  Description: Create a graph and options associated                             #
#*****************************************************************************#


p = ggplot(df_graph, aes(x=week_from_apa,
                         y=mean )) +
  geom_line() +
  xlim(-100,100)+
  theme(
    legend.title = element_text( size = 10),
    legend.text = element_text( size = 10),
    axis.title = element_text(size = 12) ) +
  labs(caption = "Source: The Hyde Group Data - Calculations: Veltys", size= 0.3,
       x ="Number of weeks before/after APA", y= "Average amount of arrears (£)", color ="") +
  geom_vline(xintercept = 0)

print(p)

ggsave("link",
       width = 8.5, height = 5.5)